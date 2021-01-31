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
This will return a JSON response with the connection and read timeouts. These values are pulled from
the config-service, which in turn pulls them from the configured Github repository  
```
{
	"connectionTimeoutMillis": 5000,
	"readTimeoutMillis": 17000
}
```

## Testing the config-service directly
```
curl localhost:8888/config-consumer-service/uat/main
```
This will return a JSON response with the configuration for the uat profile specified, as well as
the default configuration. These properties are pulled from the git repository (main branch)
```
{
	"name": "config-consumer-service",
	"profiles": ["uat"],
	"label": "main",
	"version": "0e7d76d7262b1fd19e56ab28d73cb30a35417a31",
	"state": null,
	"propertySources": [{
		"name": "https://github.com/briansjavablog/spring-config-server-on-kubernettes/configuration/config-consumer-service-uat.properties",
		"source": {
			"config-consumer-service.connectionTimeoutMillis": "5000",
			"config-consumer-service.readTimeoutMillis": "17000"
		}
	}, {
		"name": "https://github.com/briansjavablog/spring-config-server-on-kubernettes/configuration/config-consumer-service.properties",
		"source": {
			"config-consumer-service.connectionTimeoutMillis": "6000",
			"config-consumer-sermvice.readTimeoutMillis": "8000"
		}
	}]
}
```
