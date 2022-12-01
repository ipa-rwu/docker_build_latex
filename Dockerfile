FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    texlive-publishers \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
