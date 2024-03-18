#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <booleano>"
    exit 1
fi

delete_all="$1"

main_directory="./script_sample_folder"  

if [ ! -d "$main_directory" ]; then
    echo "Diretório pai não encontrado: $main_directory"
    exit 1
fi


for curret_directory in "$main_directory"/*; do
    if [ -d "$curret_directory" ]; then
        if [ "$delete_all" = true ]; then

            rm -rf "$curret_directory"
            echo "Diretório deletado: $curret_directory"
        else

            if [ -z "$(ls -A "$curret_directory")" ]; then

                rm -rf "$curret_directory"
                echo "Diretório vazio deletado: $curret_directory"
            fi
        fi
    fi
done