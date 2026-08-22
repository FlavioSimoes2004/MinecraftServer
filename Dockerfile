FROM ubuntu:22.04

RUN apt-get update -y
RUN apt-get install openjdk-21-jdk -y

WORKDIR /app

COPY server.jar ./

EXPOSE 8080

CMD ["java", "-jar", "server.jar"]