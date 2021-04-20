#!/bin/sh

RESOURCE_GROUP=config-server-demo-resource-group
CLUSTER_NAME=config-server-demo-cluster
LOCATION=ukwest
az group create --location $LOCATION --resource-group $RESOURCE_GROUP
az aks create --resource-group=$RESOURCE_GROUP --name=$CLUSTER_NAME --node-count=1 --generate-ssh-keys --node-vm-size Standard_B2s --enable-managed-identity
az aks get-credentials --overwrite-existing --name $CLUSTER_NAME --resource-group $RESOURCE_GROUP
cd ../Kubernetes
kubectl apply -f config-server-cluster.yml