#!/bin/sh

cd ../Kubernetes
kubectl delete -f config-server-cluster-local.yml
kubectl apply -f config-server-cluster-local.yml
kubectl get all