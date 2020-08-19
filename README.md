Yet another github-builder, forked from  mattbanner/github-runner, meetting the issue: <br />
there is a error in image mattbanner/github-runner:latest:<br />
/home/github/_work/_update.sh: line 31: ping: command not found<br />
need ping. will add command<br />
RUN apt-get update && apt-get install -y iputils-ping<br />
to Dockerfile<br />
For configuration see the parent project. <br />

"sudo docker run -d --name github-runner-enverid-databases2 \
   --env GITHUB_RUNNER_NAME=github-runner-enverid-databases \
 --env GITHUB_REPO_URL=https://github.com/enVerid/databases \
 --env GITHUB_TOKEN=APXLVPNGT5R2NK43TOZIT6C7HP5A6 \
 --env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
 --env WORKING_DIRECTORY=/home/github/_work \
 --env DEBIAN_FRONTEND=noninteractive \
 -v github-runner-enverid-databases:/home/github/data \
 maxi4/github-runner "
