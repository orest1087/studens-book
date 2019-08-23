FROM node:latest

MAINTAINER macnaer

#ENV PORT=5000

COPY  . /var/www
WORKDIR /var/www

RUN npm install
RUN cd client && npm install && cd ..

#EXPOSE $PORT
ENTRYPOINT [ "npm", "run", "dev" ]
