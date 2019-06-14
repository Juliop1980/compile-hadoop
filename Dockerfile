FROM ubuntu:latest

MAINTAINER kiwenlau <kiwenlau@gmail.com>

# install dependencies for compiling hadoop
RUN apt-get update && \
    apt-get install \
                       openjdk-12-jdk \
                       libprotobuf-dev \
                       protobuf-compiler \
                       maven \
                       cmake \
                       build-essential \
                       pkg-config \
                       libssl-dev \
                       zlib1g-dev \
                       llvm-gcc \
                       automake \
                       autoconf \
                       make

COPY compile.sh /root/compile.sh

RUN chmod +x /root/compile.sh
