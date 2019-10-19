FROM ideavate/amazonlinux:2

RUN yum -y upgrade \
 && yum -y install java-1.8.0-openjdk-devel unzip

ENV JAVA_HOME="/usr/lib/jvm/java-1.8.0"
