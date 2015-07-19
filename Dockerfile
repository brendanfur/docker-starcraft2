FROM ubuntu:14.04
MAINTAINER Joseph Salisbury "salisbury.joseph@gmail.com"

RUN dpkg --add-architecture i386
RUN apt-get update && \
    apt-get install -y \
    	software-properties-common \
    	supervisor \
    	wget && \
    add-apt-repository ppa:ubuntu-wine/ppa && \
	apt-get update && \
	apt-get install -y wine1.7

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN adduser kerrigan

RUN chown kerrigan /var/log/supervisor/

CMD ["/usr/bin/supervisord"]
