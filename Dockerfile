FROM python:3.10

WORKDIR /usr/src/app
COPY app.py ./
COPY requirements.txt ./
COPY run-melos.pdf ./
RUN apt update && apt install -y poppler-utils tesseract-ocr tesseract-ocr-jpn \
    && pip install -r requirements.txt

CMD ["python", "app.py"]
# CMD ["/bin/sh", "-c", "while :; do sleep 10; done"]
