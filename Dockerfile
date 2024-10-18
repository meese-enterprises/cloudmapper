FROM python:3.10-slim as cloudmapper

LABEL maintainer="https://github.com/ajmeese7/"
LABEL Project="https://github.com/meese-enterprises/cloudmapper"

EXPOSE 8000
WORKDIR /opt/cloudmapper
ENV AWS_DEFAULT_REGION=us-east-1

RUN apt-get update -y
RUN apt-get install -y build-essential autoconf automake libtool python3-tk jq awscli
RUN apt-get install -y bash

COPY . /opt/cloudmapper
RUN pip install -r requirements.txt

RUN bash
