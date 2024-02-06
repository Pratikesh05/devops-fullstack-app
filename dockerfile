FROM golang:latest
WORKDIR /usr/src/app
COPY package*.json ./
RUN golang install
COPY . .
EXPOSE 3000
CMD  ["golang", "start"]
