FROM golang:latest
RUN apt-get update -y && apt-get install -y python3-dev python3-pip
RUN python3 --version
RUN cd ghz && make build
