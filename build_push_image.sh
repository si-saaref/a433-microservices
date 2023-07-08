docker build -t item-app:v1 .
docker image ls
docker image tag item-app:v1 sisaaref/item-app:v1
docker login
docker push sisaaref/item-app:v1