Yet another github-builder, forked from  mattbanner/github-runner, meetting the issue: <br />
there is a error in image mattbanner/github-runner:latest:<br />
/home/github/_work/_update.sh: line 31: ping: command not found<br />
need ping. will add command<br />
RUN apt-get update && apt-get install -y iputils-ping<br />
to Dockerfile<br />
For configuration see the parent project. <br />
