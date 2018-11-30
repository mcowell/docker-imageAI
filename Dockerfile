# https://towardsdatascience.com/object-detection-with-10-lines-of-code-d6cb4d86f606
FROM python:3.5
RUN pip3 install --upgrade pip setuptools virtualenv
WORKDIR /imageai/
COPY requirements.pip requirements.pip
RUN pip3 install -r requirements.pip
ADD https://github.com/OlafenwaMoses/ImageAI/releases/download/1.0/yolo.h5 yolo.h5
COPY object_detection.py ./
EXPOSE 8080
CMD python object_detection.py
# sudo docker build -t imageai --file Dockerfile .
# sudo docker run --rm -it imageai /bin/bash
# sudo docker run -p 127.0.0.1:8080:8080 -d imageai
# sudo docker container ls
# curl -X POST 127.0.0.1:8080 --data-binary @/home/breim/Desktop/foto1.jpg # if post mode, i will finish this soon.
# docker exec -it imageai bash # login in docker
