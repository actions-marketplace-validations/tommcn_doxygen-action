# Container image that runs your code
FROM alpine:edge

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Install required packages
RUN apk add doxygen graphviz ttf-freefont python3


# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
