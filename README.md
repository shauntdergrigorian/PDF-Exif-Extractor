# PDF EXIF Extraction Script

This repository contains a simple Bash script that extracts metadata from PDF files using `exiftool`.  
The script processes all PDF files in a directory and outputs the extracted metadata into text files.

## Requirements

- [ExifTool](https://exiftool.org/) must be installed on your system.
- A Unix-like environment (Linux, macOS, or WSL on Windows).

## Usage

1. Clone or download this repository.

2. Place the script in a directory containing your PDF files (or update the `INPUT_DIR` variable in the script to point to the desired directory).

3. Run the script:

```bash
extract_pdf_exif.sh
```

4. The script will create an `exif_output` directory (if it does not already exist). Each PDF will have a corresponding `.txt` file containing its metadata. The filename will match the pdf.

## Example

If your directory contains:

```
document1.pdf
document2.pdf
```

After running the script, you will get:

```
exif_output/document1.txt
exif_output/document2.txt
```

## Notes

- The script only processes files with the `.pdf` extension in the specified directory.
- Update the `INPUT_DIR` variable if your PDFs are located elsewhere.
- You can change the `OUTPUT_DIR` variable to set a different output folder.

## License

This script is provided under the MIT License.
