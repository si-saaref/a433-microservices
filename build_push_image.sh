docker build -t item-app:v1 .
docker image ls
docker image tag item-app:v1 sisaaref/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u sisaaref --password-stdin
docker push sisaaref/item-app:v1