FROM python:3.7-alpine
MAINTAINER bgrabski

ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

# Setup directory structure
RUN adduser -D user
USER user