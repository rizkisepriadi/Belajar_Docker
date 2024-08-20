D:\Project\Docker\Belajar-Docker-Dasar\backup

docker container create --name nginxbackup --mount "type=bind,source=D:\Project\Docker\Belajar-Docker-Dasar\backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker image pull ubuntu:latest

# Otomatis menghapus container setelah selesai
docker container run --rm --name ubuntubackup --mount "type=bind,source=D:\Project\Docker\Belajar-Docker-Dasar\backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data 
