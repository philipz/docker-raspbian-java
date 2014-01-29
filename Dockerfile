FROM resin/rpi-raspbian:wheezy
ADD ./raspi.list /etc/apt/sources.list.d/
ADD http://archive.raspberrypi.org/debian/raspberrypi.gpg.key /root/raspberrypi.gpg.key 
RUN apt-key add /root/raspberrypi.gpg.key
RUN apt-get update && apt-get -y upgrade
RUN echo oracle-java7-jdk shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java7-jdk && apt-get clean
