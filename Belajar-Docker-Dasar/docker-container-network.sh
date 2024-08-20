docker image pull mongo-express:latest

docker network create --driver bridge mongonetwork

docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=rizki --env MONGO_INITDB_ROOT_PASSWORD=rizki mongo:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_BASICAUTH_USERNAME=rizki --env ME_CONFIG_BASICAUTH_PASSWORD=rizki --env ME_CONFIG_MONGODB_URL=mongodb://rizki:rizki@mongodb:27017/ mongo-express:latest

docker container start mongodb mongodbexpress

docker container stop mongodb mongodbexpress

docker network disconnect mongonetwork mongodb

docker network connect mongonetwork mongodb