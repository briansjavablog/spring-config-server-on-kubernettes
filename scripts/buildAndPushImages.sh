#!/bin/sh

cd ../config-consumer-service/
mvn clean package
docker image rm -f briansjavablog/config-consumer-service:k8
docker image build -t briansjavablog/config-consumer-service:k8 .
docker push briansjavablog/config-consumer-service:k8
cd ..
cd config-service/
mvn clean package
docker image rm -f briansjavablog/config-service:k8
docker image build -t briansjavablog/config-service:k8 .
docker push briansjavablog/config-service:k8