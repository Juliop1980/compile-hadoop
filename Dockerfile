FROM ubuntu:latest

MAINTAINER Julio Perez <perezduranjulio@gmail.com>

# install dependencies for compiling hadoop
RUN apt-get install -y software-properties-common && add-apt-repository ppa:jonathonf/gcc-7.1 && apt-get update \
    apt-get install -y wget \
                       openjdk-11-jdk \
                       libprotobuf-dev \
                       protobuf-compiler \
                       maven \
                       cmake \
                       build-essential \
                       pkg-config \
                       libssl-dev \
                       zlib1g-dev \
                       gcc-7 \
                       automake \
                       autoconf \
                       make

COPY compile.sh /root/compile.sh

RUN chmod +x /root/compile.sh
