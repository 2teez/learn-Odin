#!/usr/bin/env bash
# author: 	    omitida
# description:  making generic odin file, compile and run such.
# date: 	    4th Nov. 2025
#

function make_generic_file() {
    filename="${1}"
    filename="${filename%.*}.odin"

    # check if the file exist
    if ! [[ -e "${filename}" ]]; then
        touch "${filename}"
        echo "package ${filename%.*}" > "${filename}"
        echo >> "${filename}"
        echo "import \"core:fmt\"" >> "${filename}"
        echo >> "${filename}"
        echo "main :: proc() {" >> "${filename}"
        echo "  fmt.println(\"Hellope!\")" >> "${filename}"
        echo "}" >> "${filename}"
    else
        echo "${filename} exist."
        while read -p "Will you like to replace the file? [y|n]: " ans; do
            case "${ans}" in
                y)
                    rm -f "${filename}"
                    echo "${filename} deleted!."
                    exit 0
                    ;;
                n)
                    echo "${filename} NOT deleted."
                    exit 0;
                    ;;
                *)
                    echo "Invalid Input."
                    continue
                    ;;
            esac
        done
    fi
}

function helper() {
    echo
    echo "${0} <options> <filename>"
    echo
    echo
    echo "Avaliable options:"
    echo
    echo "-g:   create generic odin file."
    echo "-r:   compile and run compiled odin file."
    echo "-s:   compile and run standalone compiled odin file."
    echo "-h:   display this help file."
    exit 1
}

opstring="g:s:r:h"

while getopts "${opstring}" opt; do
    case "${opt}" in
        g)
            file="${OPTARG}"
            filename="${file}"
            make_generic_file "${file}"
            folder_name="${file%.*}"
            mkdir "${folder_name}"
            mv "${filename}" "${folder_name}"

            # run the directory..
            ./"${0}" -r "${folder_name}"
            ;;
        r)
            file="${OPTARG}"
            odin run "${file}" -vet -strict-style
            ;;
        s)
            file="${OPTARG}"
            file_ext="file%.*"
            if ! [[ "file_ext" != "odin" ]]; then
                echo "compile and run only odin file!"
                exit 1
            fi
            odin run "${file}" -file -vet -strict-style
            ;;
        h)
            # call helper function
            helper
            ;;
        *)
            echo "Invalid Input."
            ;;
    esac
done
