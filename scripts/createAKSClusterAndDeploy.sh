#!/bin/sh

RESOURCE_GROUP=config-demo-resource-group-2
CLUSTER_NAME=config-server-cluster-2
LOCATION=ukwest
az
az group create --location $LOCATION --resource-group $RESOURCE_GROUP
az aks create --resource-group=$RESOURCE_GROUP --name=$CLUSTER_NAME --node-count=1 --generate-ssh-keys --node-vm-size Standard_B2s --enable-managed-identity
az aks get-credentials --name $CLUSTER_NAME --resource-group $RESOURCE_GROUP
cd ../Kubernetes
kubectl apply -f config-server-cluster-aks.yml