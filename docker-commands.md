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
