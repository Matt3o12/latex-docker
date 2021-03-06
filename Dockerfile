FROM ubuntu:xenial
MAINTAINER Benedikt Lang <mail@blang.io>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full make \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
