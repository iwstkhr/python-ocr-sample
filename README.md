## Introduction

This repository demonstrates how to perform OCR on Japanese PDFs using [**Tesseract OCR v4**](https://github.com/tesseract-ocr/tesseract) and [**pytesseract**](https://pypi.org/project/pytesseract/).

The source text is [**Run, Melos!**](http://pddlib.v.wol.ne.jp/literature/dazai/meros.htm) by Osamu Dazai, a work that is now in the public domain.

## Prerequisites

Before we start, ensure the following libraries are installed:

- [pdf2image](https://pypi.org/project/pdf2image/)
- [pytesseract](https://pypi.org/project/pytesseract/)

Additionally, Tesseract OCR itself must be installed. Follow the instructions on the [official repository](https://github.com/tesseract-ocr/tesseract) to set it up.

## Steps to Perform OCR

A python script - [app.py](app.py) - executes the following:

1. Convert a PDF to PNG image data using pdf2image.
2. Extract characters from the converted data using Tesseract OCR and pytesseract.
3. Save the result in a text file.

Run the following command:

```shell
NAME=pytesseract-sample
docker build -t $NAME .
docker run --name $NAME $NAME

# You can see OCR processing result in `result.txt`.
docker cp $NAME:/usr/src/app/result.txt ./
less result.txt

# Clean up
docker container rm $NAME
docker image rm $NAME
```

## Result

- **Original Text**: [original.txt](original.txt)
- **OCR Result**: [result.txt](result.txt)

### Notes on Diff Tools

Since the script removes newlines, comparing results using the `diff` command may be ineffective. Instead, consider GUI-based tools like [Araxis Merge](https://www.araxis.com/merge/) or [WinMerge](https://winmerge.org/).

## Conclusion

Using **Tesseract OCR** and **pytesseract**, we can efficiently extract text from Japanese PDFs. While the results are promising, the accuracy may vary based on the complexity of the PDF layout.

Happy Coding! 🚀
