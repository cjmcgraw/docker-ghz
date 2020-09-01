FROM golang:latest
RUN apt-get update -y && apt-get install -y python3-dev python3-pip
RUN python3 --version
RUN git clone https://github.com/bojand/ghz && cd ghz && make build
ENV PATH "$PATH:/go/ghz/dist"
RUN mkdir /app
WORKDIR /app
ENTRYPOINT ["ghz"]
