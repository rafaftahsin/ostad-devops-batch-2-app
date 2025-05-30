FROM ubuntu:20.04
RUN apt update
RUN apt install -y nginx
RUN apt install -y nodejs
RUN apt install -y npm
COPY ./ /app
WORKDIR /app
ENTRYPOINT ["node", "index.js"]