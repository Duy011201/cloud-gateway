# Note

## Docker
- docker ps -a: view list container is run
- docker rm -f <CONTAINER_ID>: remove container by id
- docker build --tag=duy011201/starship-cloud-gateway:latest .
- docker run -d -p 8761:8080 --name starship-eureka-server duy011201/starship-cloud-gateway
- docker tag starship-cloud-gateway:latest duy011201/starship-cloud-gateway:latest
- docker push duy011201/starship-cloud-gateway:latest


