FROM python:3.9-alpine3.13
LABEL maintainer="londonappdeveloper.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
COPY ./app /app


WORKDIR /app
EXPOSE 8000

RUN python3 -m venv venv && \
    source  venv/bin/activate && \
    pip install --upgrade pip && \
    apt-get install build-essential python && \
    pip install -r /requirements.txt 




