#!/bin/bash

# Directory containing the PDFs (change if needed)
INPUT_DIR="."
# Output subdirectory
OUTPUT_DIR="exif_output"

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop through all PDF files in the directory
for pdf_file in "$INPUT_DIR"/*.pdf; do
    # Get the base name (filename without path)
    base_name=$(basename "$pdf_file" .pdf)

    # Output text file path
    output_file="$OUTPUT_DIR/${base_name}.txt"

    # Run exiftool and save output
    exiftool "$pdf_file" > "$output_file"

    echo "Processed: $pdf_file -> $output_file"
done
