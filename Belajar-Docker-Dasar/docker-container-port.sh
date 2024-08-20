docker image pull nginx:latest

# Post Forwadding
docker container create --name container-nginx --publish 8080:80 nginx:latest