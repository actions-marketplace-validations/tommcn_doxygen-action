# Container image that runs your code
FROM python:3.7-alpine

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Install required packages
RUN apk add doxygen graphviz ttf-freefont py-pip
RUN pip install doxypypy
RUN python3 -V

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
