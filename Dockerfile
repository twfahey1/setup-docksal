# Container image that runs your code
FROM ubuntu:16.04

# Install prerequisites
RUN apt-get update && apt-get install -y \
curl \
sudo \
iproute2

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
CMD /bin/bash

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]