Yet another github-builder, forked from  mattbanner/github-runner, meetting the issue: 
there is a error in image mattbanner/github-runner:latest:
/home/github/_work/_update.sh: line 31: ping: command not found
need ping. will add command
RUN apt-get update && apt-get install -y iputils-ping
to Dockerfile
For configuration see the parent project. 
