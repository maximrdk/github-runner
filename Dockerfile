FROM mattbanner/github-runner:latest
USER root
RUN apt-get update && apt-get install -y iputils-ping
# Set the args we need for the build
ARG GITHUB_RUNNER_VERSION='2.272.0'
RUN \
    echo "Install GitHub Runner" && \
        curl -O -L https://github.com/actions/runner/releases/download/v${GITHUB_RUNNER_VERSION}/actions-runner-linux-x64-${GITHUB_RUNNER_VERSION}.tar.gz && \
        tar xzf ./actions-runner-linux-x64-${GITHUB_RUNNER_VERSION}.tar.gz && \
        ./bin/installdependencies.sh && \
    echo "Remove redundant archive" && \
        rm actions-runner-linux-x64-${GITHUB_RUNNER_VERSION}.tar.gz

# Change entry user
USER github
