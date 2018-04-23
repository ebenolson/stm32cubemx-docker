FROM ubuntu:latest

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get -y install unzip libc6-i386 openjdk-8-jre

ADD en.stm32cubemx.zip /tmp/en.stm32cubemx.zip
ADD auto-install.xml /tmp/auto-install.xml

WORKDIR /tmp

RUN unzip en.stm32cubemx.zip && /tmp/SetupSTM32CubeMX-4.25.0.linux auto-install.xml