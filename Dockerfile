# Container image that runs your code
FROM dslim/slim
# FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.sh /entrypoint.sh
# sudo chmod 775 docker-entrypoint.sh

COPY --chmod=0777 entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
