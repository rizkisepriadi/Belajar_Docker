# From Instruction
docker build -t rizkisepriadi11/from from

# Command Instruction
docker build -t rizkisepriadi11/command command
docker image inspect rizkisepriadi11/command
docker container create --name command rizkisepriadi11/command
docker container start command
docker container logs command

# Add Instruction
docker build -t rizkisepriadi11/add add
docker container create --name add rizkisepriadi11/add
docker container start add

# Copy Instruction
docker build -t rizkisepriadi11/copy copy
docker container create --name copy rizkisepriadi11/copy
docker container start copy
docker container logs copy

# ignore Instruction
docker build -t rizkisepriadi11/ignore ignore
docker container create --name ignore rizkisepriadi11/ignore
docker container start ignore
docker container logs ignore

# Expose Instruction
docker build -t rizkisepriadi11/expose expose
docker image inspect rizkisepriadi11/expose
docker container create --name expose -p 8080:8080 rizkisepriadi11/expose
docker container start expose
docker container ls

# ENV Instruction
docker build -t rizkisepriadi11/env env
docker image inspect rizkisepriadi11/env
docker container create --name env  --env APP_PORT=8080 rizkisepriadi11/env
docker container start env
docker container logs env

# VOLUME Instruction
docker build -t rizkisepriadi11/volume volume
docker image inspect rizkisepriadi11/volume
docker container create --name volume --env APP_PORT=8080 -p 8080:8080 rizkisepriadi11/volume
docker container start volume
docker container logs volume

# WORKDIR Instruction
docker build -t rizkisepriadi11/workdir workdir
docker container create --name workdir -p 8080:8080 rizkisepriadi11/workdir
docker container start workdir
docker container exec -i -t workdir /bin/sh

# USER Instruction
docker build -t rizkisepriadi11/user user
docker container create --name user rizkisepriadi11/user
docker container start user
docker container exec -i -t user /bin/sh

# ARG Instruction
docker build -t rizkisepriadi11/arg arg --build-arg app=pzn
docker container create --name arg -p 8080:8080 rizkisepriadi11/arg
docker container start arg
docker container exec -i -t arg /bin/sh

# HEALTHCHECK Instruction
docker build -t rizkisepriadi11/health health
docker container create --name health -p 8080:8080 rizkisepriadi11/health
docker container start health
docker container inspect health

# entrypoint Instruction
docker build -t rizkisepriadi11/entrypoint entrypoint
docker container create --name entrypoint -p 8080:8080 rizkisepriadi11/entrypoint
docker container start entrypoint
docker container logs entrypoint
docker container exec -i -t entrypoint /bin/sh

# Multi Stage Build Instruction
docker build -t rizkisepriadi11/multi multi
docker container create --name multi -p 8080:8080 rizkisepriadi11/multi
docker container start multi
docker container exec -i -t multi /bin/sh

# Docker hub registry Instruction
docker login -u rizkisepriadi11
docker push rizkisepriadi11/multi