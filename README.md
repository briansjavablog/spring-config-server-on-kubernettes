# Spring Config Server on Kubernetes
# Documentation
This code is explained in detail, in a 2 part article
- part 1 - https://www.briansdevblog.com/2021/04/spring-cloud-config-server-on-kubernetes-part-1/
- part 2 - https://www.briansdevblog.com/2021/04/spring-cloud-config-server-on-kubernetes-part-2/

Clone the repository with 
```
git clone git@github.com:briansjavablog/spring-config-server-on-kubernettes.git
```
## Running in a local cluster 
To run the Config Service and the Config Consumer Service
in a local cluster run the following. Note you'll need a local
Kubernetes cluster before you run these commands.
```
cd kubernetes
./deployLocalCluster.sh
```
## Running on Azure AKS
To run the Config Service and the Config Consumer Service
in an AKS cluster, run the following. Note you'll need an Azure 
account and the Azure CLI installed and authenticated. 
```
cd kubernetes
./createAKSClusterAndDeploy.sh
```