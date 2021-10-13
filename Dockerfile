FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install python3 && \
    python3-pip && \
    apt-get autoclean -y

RUN pip3 install -r requirements.txt
