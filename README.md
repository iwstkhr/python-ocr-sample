# Python OCR sample using Tesseract OCR + pytesseract

## Introduction
This repository is intended for validation of Japanese OCR accuracy using [Tesseract OCR](https://github.com/tesseract-ocr/tesseract) + [pytesseract](https://pypi.org/project/pytesseract/).<br/>
[Run, Melos! written by Osamu Dazai](http://pddlib.v.wol.ne.jp/literature/dazai/meros.htm) is used as a sample PDF.

## Version
Tesseract OCR 4.1.1 

## Processing Summary
A python script - [app.py](app.py) - executes the following:

- Convert a PDF to PNG image data using [pdf2image](https://pypi.org/project/pdf2image/).
- Extract characters from the converted data using [Tesseract OCR](https://github.com/tesseract-ocr/tesseract) and [pytesseract](https://pypi.org/project/pytesseract/)
- Save the result in a text file.

## Usage
```shell
$ NAME=pytesseract-sample
$ docker build -t $NAME .
$ docker run --name $NAME $NAME
$
$ # You can see OCR processing result in `result.txt`.
$ docker cp $NAME:/usr/src/app/result.txt ./
$ less result.txt
$
$ # Clean up
$ docker container rm $NAME
$ docker image rm $NAME
```

## Validation Result
Because the result is composed of a single line, `diff` could not help.<br/>
Please use GUI diff tools like [Araxis Merge](https://www.araxis.com/merge/) on Mac, [WinMerge](https://winmerge.org/) on Windows, etc.<br/>
You can compare [original.txt](original.txt) with [result.txt](result.txt) in this repository.

I think the result is practical in some situations and accuracy will be more and more improved.

However, accuracy will be highly likely to worsen depending on PDF layout which you use, because the PDF used here is very simple layout and has no diagrams, tables, etc. Maybe the sample PDF - Run, Melos! - is old Japanese style, so it might affect OCR accuracy.
