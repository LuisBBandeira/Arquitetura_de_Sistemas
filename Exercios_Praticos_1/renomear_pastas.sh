#!/bin/bash

if [ $# -eq 0 ]; then 
    read -p "Escreve um prefixo: " prefix
else

prefix="$1"

fi

main_directory="./script_sample_folder" 

if [ ! -d "$main_directory" ]; then
    echo "Diretório pai não encontrado: $main_directory"
    exit 1
fi

for curret_directory in "$main_directory"/*; do
    if [ -d "$curret_directory" ]; then
        curret_name=$(basename "$curret_directory")
        new_name="$prefix-$curret_name"
        
        mv "$curret_directory" "$main_directory/$new_name"
        
        echo "Diretório renomeado: $curret_directory -> $main_directory/$new_name"
    fi
done