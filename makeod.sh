#!/usr/bin/env bash
# author: 	omitida
# description:  making generic odin file, compile and run such.
# date: 	4th Nov. 2025
#

function make_generic_file() {
    filename="${1}"
    filename="${filename%.*}.odin"
    touch "${filename}"
    echo "package ${filename%.*}" > "${filename}"
    echo >> "${filename}"
    echo "import \"core:fmt\"" >> "${filename}"
    echo >> "${filename}"
    echo "main :: proc() {" >> "${filename}"
    echo "  fmt.println(\"Hellope!\")" >> "${filename}"
    echo "}" >> "${filename}"
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
    echo "-h:   display this help file."
    exit 1
}

opstring="g:r:h"

while getopts "${opstring}" opt; do
    case "${opt}" in
        g)
            file="${OPTARG}"
            make_generic_file "${file}"
            ;;
        r)
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
