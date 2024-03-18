#!/bin/bash

read -p "Escreve um caracter: " character

directory="./script_sample_folder"

for dir in "$directory"/*; do 

    if [[ "$dir" == *"$character"* ]]; then
        rm -rf "$dir"/*
    fi
done