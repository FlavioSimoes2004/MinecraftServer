FROM ubuntu:22.04

RUN apt-get update -y
RUN apt-get install -y openjdk-25-jdk nano curl gnupg

RUN curl -SsL -o /usr/local/bin/playit https://builds.playit.gg/1.0.10/playit-linux-amd64 && \
    chmod +x /usr/local/bin/playit

WORKDIR /app

COPY server.jar ./

RUN echo "eula=true" > eula.txt