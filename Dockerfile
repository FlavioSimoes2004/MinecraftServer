FROM ubuntu:22.04

RUN apt-get update -y
RUN apt-get install -y openjdk-25-jdk nano curl gnupg

RUN curl -SsL https://packages.playit.gg/keys/playit.gpg | gpg --dearmor | tee /usr/share/keyrings/playit.gpg >/dev/null
RUN chmod 0644 /usr/share/keyrings/playit.gpg
RUN curl -fsSL -o /etc/apt/sources.list.d/playit.list https://packages.playit.gg/repo-files/playit-debian.list
RUN apt-get update -y
RUN apt-get install -y playit

WORKDIR /app

COPY server.jar ./

RUN echo "eula=true" > eula.txt