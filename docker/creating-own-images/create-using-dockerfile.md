# This is a comment
FROM ubuntu:14.04
MAINTAINER Kate Smith <ksmith@example.com>
RUN apt-get update && apt-get install -y ruby ruby-dev
RUN gem install sinatra


* each line consist of a command and a statement


# once the docker file is completed then we run 
docker build -t ouruser/sinatra:v2 .        // note . is used to read the DOckerfile inside current directory
* -t flag telld the imafge in for new user namer ouruser
