#!/bin/bash

base_dir="01_HTML"

for day_folder in "$base_dir"/day_*; do
    if [ -d "$day_folder" ]; then
        for html_file in "$day_folder"/*.html; do
            [ -e "$html_file" ] || continue
            filename=$(basename -- "$html_file")
            name="${filename%.*}"
            project_folder="$day_folder/$name"
            mkdir -p "$project_folder"
            mv "$html_file" "$project_folder/index.html"
        done
    fi
done
