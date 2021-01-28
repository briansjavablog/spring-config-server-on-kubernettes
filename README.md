# Spring Config Server on Kubernetes

Clone the repository with 
```
git clone git@github.com:briansjavablog/spring-config-server-on-kubernettes.git
```

## Building the config-consumer-service image
```
cd config-consumer-service
docker image build -t config-consumer-service .
```
## Building the config-service image
```
cd config-service
docker image build -t config-service .
```
## Running both containers locally with Docker Compose
```
docker-compose up
```
## Testing the config-consumer-service
```
curl localhost:8080/timeout-config
```