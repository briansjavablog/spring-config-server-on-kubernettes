#!/bin/sh

cd ..
cd Kubernetes
kubectl delete -f config-server-cluster-local.yml
cd ../config-consumer-service/
mvn clean package
#docker image rm -f briansjavablog/config-consumer-service:k8
docker rm -f $(docker ps | grep 'config-consumer-service' | awk '{ print $1 }')
docker image build --no-cache -t briansjavablog/config-consumer-service:k8 .
cd ..
cd config-service/
mvn clean package
docker rm -f $(docker ps | grep 'config-service' | awk '{ print $1 }')
docker image build --no-cache -t briansjavablog/config-service:k8 .
cd ..
cd Kubernetes
kubectl delete -f config-server-cluster-local.yml
kubectl apply -f config-server-cluster-local.yml
kubectl get all