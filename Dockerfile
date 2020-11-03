FROM ideavate/amazonlinux:2

RUN amazon-linux-extras enable corretto8

RUN yum -y upgrade \
  && yum -y install java-1.8.0-amazon-corretto-devel unzip


ENV JAVA_HOME="/usr/lib/jvm/java"
