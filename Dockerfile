FROM archlinux:latest

RUN pacman -Syu --noconfirm
RUN pacman -Sq --noconfirm jdk8-openjdk scala

RUN useradd -m scalauser

WORKDIR /home/scalauser
RUN mkdir -p dev/scala/hello

COPY ./hello.scala dev/scala/hello
