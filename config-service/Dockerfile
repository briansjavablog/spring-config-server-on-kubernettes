FROM openjdk:11-jre-slim-buster

MAINTAINER Brian Hannaway

WORKDIR /app

COPY /target/config-server-0.0.1-SNAPSHOT.jar /app/

ENTRYPOINT ["java", "-jar", "config-server-0.0.1-SNAPSHOT.jar"]