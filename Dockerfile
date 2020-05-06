FROM python:3.7-alpine
MAINTAINER abbaasalif

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache jpeg-dev
RUN apk add --update --no-cache gcc libc-dev mariadb-dev musl-dev zlib zlib-dev
RUN pip install -r /requirements.txt
RUN mkdir /web
WORKDIR /web
COPY ./web /web