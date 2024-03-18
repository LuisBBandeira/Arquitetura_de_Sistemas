#!/bin/bash

main_directory="./script_sample_folder"  

if [ ! -d "$main_directory" ]; then
    echo "Diretório pai não encontrado: $main_directory"
    exit 1
fi

for directory in "$main_directory"/*; do
    if [ -d "$directory" ]; then
        name_directory=$(basename "$directory")
        content="script_sample_folder-$name_directory"
        folder_path="$directory/$name_directory.txt"
        
        echo "$content" > "$folder_path"
        
        echo "Arquivo criado: $folder_path"
    fi
done