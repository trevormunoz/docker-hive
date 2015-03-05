FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install golang git make -y

RUN \
echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile

ENV GOPATH /usr/local/go/bin

RUN mkdir -p /usr/local/go/bin/src/github.com/nytlabs

WORKDIR /usr/local/go/bin/src/github.com/nytlabs

RUN \
git clone -b 1.0.2 --depth 1 https://github.com/nytlabs/hive.git &&\
cd hive &&\
make

COPY start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh

