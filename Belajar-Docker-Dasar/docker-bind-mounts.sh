docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=D:\Project\Docker\Belajar-Docker-Dasar\mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=rizki --env MONGO_INITDB_ROOT_PASSWORD=rizki mongo:latest