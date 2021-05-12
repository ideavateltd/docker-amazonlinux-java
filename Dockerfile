FROM ideavate/amazonlinux-java:corretto-8

RUN yum upgrade -y

# Install docker
RUN amazon-linux-extras install -y docker

# Install NodeJS
RUN curl --silent --location https://rpm.nodesource.com/setup_14.x | bash \
 && yum install -y nodejs

# Install git
RUN yum install -y git

# Install maven
RUN yum install -y maven

# Install sudo
RUN yum install -y sudo

# Setup non-root user for build, but allow sudo and docker
RUN useradd -m -g docker builder && echo "builder ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/builder
RUN chmod a=rwx -R /home/builder
WORKDIR /home/builder
USER builder
