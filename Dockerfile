FROM debian:buster

COPY . /app
WORKDIR /app

RUN apt-get update
RUN apt-get install -y as31 nasm binutils

ENTRYPOINT [ "/bin/bash", "/app/entrypoint.sh" ]
