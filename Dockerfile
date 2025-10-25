FROM node:latest

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password 

RUN mkdir -p /home/app 

COPY app/  /home/app

WORKDIR /home/app

RUN npm install

CMD  ["node", "/home/app/server.js"]