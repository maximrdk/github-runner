FROM mattbanner/github-runner:latest
USER root
RUN apt-get update && apt-get install -y iputils-ping
# Change entry user
USER github
