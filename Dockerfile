# https://towardsdatascience.com/object-detection-with-10-lines-of-code-d6cb4d86f606
FROM python:3.6-slim-buster
RUN pip3 install --upgrade pip setuptools virtualenv
WORKDIR /imageai/
COPY requirements.pip requirements.pip
RUN pip3 install -r requirements.pip
ADD https://github.com/OlafenwaMoses/ImageAI/releases/download/1.0/yolo.h5 yolo.h5
ADD https://lh3.googleusercontent.com/pw/ACtC-3crNPXWpNNMmD-vLfLH0hyXFIMTeSC-mUchG43VIQnVqi4vmGpwO9_UslU0E6aUSfdXSwA3E2A1EXxz73QeDCKap7HcUkwCsL65jUK6ouTBFTXaPxXmzm6N3lrstccBvkSigxwYin7z-xc5VQF3hI5I-A=w1213-h682-no?authuser=0 image.jpg
COPY object_detection.py ./
EXPOSE 8080
CMD python object_detection.py
# sudo docker build -t imageai --file Dockerfile .
# sudo docker run --rm -it imageai /bin/bash
# sudo docker run -p 127.0.0.1:8080:8080 -d imageai
# sudo docker container ls
# curl -X POST 127.0.0.1:8080 --data-binary @/home/breim/Desktop/foto1.jpg # if post mode, i will finish this soon.
# docker exec -it imageai bash # login in docker
