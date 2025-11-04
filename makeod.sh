#!/usr/bin/env bash
# author: 	omitida
# description:  making generic odin file, compile and run such.
# date: 	4th Nov. 2025
#

function make_generic_file() {
    filename="${1}"
    filename="${filename%.*}"
    echo "${filename}.odin"
}

function helper() {
    echo "${0} <option> <filename>"

    echo "Avaliable options:"
    echo "-g:   create generic odin file."
    echo "-r:   compile and run compiled odin file."
    echo "-h:   display this help file."
    exit 1
}

opstring="g:r:h"

while getops "${opstring}" opt; do
    case "${opt}" in
        g)
            ;;
        r)
            ;;
        h)
            # call helper function
            helper()
            ;;
        *)
            echo "Invalid Input."
    esac
done
