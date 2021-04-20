FROM openjdk:11-jre-slim-buster
MAINTAINER Brian Hannaway
RUN apt-get update && apt-get install -y curl
WORKDIR /app
COPY /target/config-consumer-service-0.0.1-SNAPSHOT.jar /app/
ENTRYPOINT ["java", "-jar", "config-consumer-service-0.0.1-SNAPSHOT.jar"]