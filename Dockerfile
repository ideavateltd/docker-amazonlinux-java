FROM ideavate/amazonlinux-java:openjdk-8

# Install docker-cli
RUN yum install -y yum-utils \
 && yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo \
 && yum install -y docker-ce-cli

# Install git
RUN yum install -y git

# Install maven
RUN yum install -y maven

# Install sudo
RUN yum install -y sudo

# Setup non-root user for build, but allow sudo and docker
RUN useradd -m -g docker builder && echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder
WORKDIR /home/builder
USER builder
