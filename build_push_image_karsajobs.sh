# Todo => creating docker iamge
docker build -t karsajobs:latest .

# Todo => creating new image that refers to docker hub image repo
docker tag karsajobs:latest sisaaref/karsajobs:latest

# Todo => login to docker local
echo $PASSWORD_DOCKER_HUB | docker login -u sisaaref --password-stdin

# Todo => pushing image on local to repo docker hub
docker push sisaaref/karsajobs:latest