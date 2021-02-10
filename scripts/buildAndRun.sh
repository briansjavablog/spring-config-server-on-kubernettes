#!/bin/sh

cd ../config-consumer-service/
mvn clean install
docker image rm -f briansjavablog/config-consumer-service:k8
docker image build -t briansjavablog/config-consumer-service:k8 .
docker push briansjavablog/config-consumer-service:k8
cd ..
cd config-service/
mvn clean install
docker image rm -f briansjavablog/config-service:k8
docker image build -t briansjavablog/config-service:k8 .
docker push briansjavablog/config-service:k8
cd ..
#docker-compose up
cd Kubernetes
kubectl delete -f config-server-cluster.yml
kubectl apply -f config-server-cluster.yml
kubectl get all