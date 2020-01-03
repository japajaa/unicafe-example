FROM ubuntu:16.04

ADD unicafe /unicafe
WORKDIR /unicafe

RUN apt-get update && apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN npm install
CMD npm start

EXPOSE 3000
