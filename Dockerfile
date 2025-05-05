FROM ubuntu:20.04
RUN apt update
RUN apt install -y nodejs
RUN apt install -y npm
COPY ./ /app
WORKDIR /app
RUN npm install
ENTRYPOINT ["node", "index.js"]