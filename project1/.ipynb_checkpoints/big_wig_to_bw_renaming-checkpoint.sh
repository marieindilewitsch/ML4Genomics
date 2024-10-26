#!/bin/bash

# Check if input path was given
if [ -z "$1" ]; then
    echo 'Missing input variable. Please run big_wig_to_bw_renaming.sh with the path to the data directory as an argument.'
    exit 1
fi

Path_to_ML4G_Project_1_Data="$1"

cd "$Path_to_ML4G_Project_1_Data" || exit #exit to stop executing the script if cd commmand fails

# Find and rename all bigWig files to .bw
find . -type f \( -iname "*.bigwig" -o -iname "*.bigWig" -o -iname "*.BigWig" \) -print0 | while IFS= read -r -d '' file; do
    # Get the directory and base name of the file
    dir=$(dirname "$file")
    base=$(basename "$file")
    # Construct the new file name with .bw extension
    newbase="${base%.*}.bw"
    newfile="$dir/$newbase"
    # Rename the file
    mv "$file" "$newfile"
    echo "Renamed '$file' to '$newfile'"
done