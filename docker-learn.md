## create docker network
docker network create <name_of_network>

## start mongo-db
docker run -d \
-p 27017:27017 \
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=password \
--name mongodb \
--net mongo-network \
63645998e0f4

## start mongo-express
docker run -d \
-p 8081:8081 \
-e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
-e ME_CONFIG_MONGODB_ADMINPASSWORD=password \
-e ME_CONFIG_MONGODB_SERVER=mongodb \
--net mongo-network \
--name mongo-express \
1133e12468c7

## docker compose file
a configuration file that defines how to run multiple containers at the same time.the difference between that and docker file is builds an image whiles docker-compose file defines how to run the image and manage the container

## docker file 
contains all requirements and specifications to build an image

## some basic docker workflow will be
create your app -> create docker file for the app -> create the docker image from the docker file -> push image to a repository -> run docker container from the image (can use docker compose)

## pushing images into a private repository
some private repositories 
    - amazon ecr
    - you can create a private docker repository on amazon ecr 
    - an ecr repo can have a single docker image per repo, however you can have multiple tags (versions) of that image in the repo

to push the image into the repo
    - login & authenticate yourself to gain access to the repository 
    - use the command below for aws cli authentication
    - <aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 684673970544.dkr.ecr.eu-central-1.amazonaws.com>
    - follow aws "View push commands" to push the images to ECR


## pulling an image from aws ecr(private) repository
docker pull <full_private_repo_name>/<image_name>:<tag>

## docker volume 
persist docker container data