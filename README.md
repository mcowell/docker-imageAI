ImageAIDemo
===========

Dockerised version of the example provided by [Moses Olafenwa](https://towardsdatascience.com/@guymodscientist) in his article [Object Detection with 10 lines of code](https://towardsdatascience.com/object-detection-with-10-lines-of-code-d6cb4d86f606)

# cd docker-imageAI
# sudo docker build -t imageai --file Dockerfile .
# sudo docker run --rm -it imageai /bin/bash
# sudo docker run -p 127.0.0.1:8080:8080 -d imageai
# sudo docker container ls
# curl -X POST 127.0.0.1:8080 --data-binary @/home/breim/Desktop/foto1.jpg # if post mode, i will finish this soon.
# docker exec -it imageai bash # login in docker
