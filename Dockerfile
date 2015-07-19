FROM ubuntu:14.04
MAINTAINER Joseph Salisbury "salisbury.joseph@gmail.com"

RUN dpkg --add-architecture i386
RUN apt-get update && \
    apt-get install -y \
    	software-properties-common \
    	wget && \
    add-apt-repository ppa:ubuntu-wine/ppa && \
	apt-get update && \
	apt-get install -y wine1.7

RUN adduser kerrigan
USER kerrigan
WORKDIR /home/kerrigan/

CMD wget http://dist.blizzard.com/downloads/sc2-installers/full/StarCraft-II-Setup-enGB.exe && \
	wine ./StarCraft-II-Setup-enGB.exe
