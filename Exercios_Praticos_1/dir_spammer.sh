#!/bin/bash

mkdir script_sample_folder

for letra1 in {a..z}; do
    for letra2 in {a..z}; do
        mkdir "script_sample_folder/$letra1$letra2"
    done
done

echo "Pastas criadas com sucesso."
