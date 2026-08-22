FROM ubuntu:22.04

RUN apt-get update -y
RUN apt-get install openjdk-25-jdk nano -y

WORKDIR /app

COPY server.jar ./

RUN echo "eula=true" > eula.txt