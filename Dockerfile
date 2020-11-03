FROM ideavate/amazonlinux:2

RUN yum -y upgrade \
  && yum -y install java-11-amazon-corretto unzip

ENV JAVA_HOME="/usr/lib/jvm/java-11-amazon-corretto.x86_64"
