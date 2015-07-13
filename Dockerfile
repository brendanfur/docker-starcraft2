FROM ubuntu:14.04
MAINTAINER Joseph Salisbury "salisbury.joseph@gmail.com"

RUN dpkg --add-architecture i386
RUN apt-get update &&\
    apt-get install -y wget software-properties-common &&\
    add-apt-repository ppa:ubuntu-wine/ppa
RUN apt-get update && apt-get install -y wine1.7

# i am the swarm~
RUN adduser kerrigan
USER kerrigan

RUN regsvr32 ole32

CMD wine notepad
