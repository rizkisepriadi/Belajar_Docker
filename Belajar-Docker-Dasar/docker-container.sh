docker container ls -a

docker container create --name contohredis redis:latest

docker container create --name contohredis2 redis:latest

docker container start contohredis

docker container stop contohredis

docker container rm contohredis