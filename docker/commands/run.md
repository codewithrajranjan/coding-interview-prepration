#  docker run ubuntu /bin/echo 'Hello world'

* docker run runs a container.
* ubuntu is the image you run, for example the Ubuntu operating system image. When you specify an image, Docker looks first for the image on your Docker host. If the image does not exist locally, then the image is pulled from the public image registry Docker Hub.
* /bin/echo is the command to run inside the new container.
* in this example  Docker containers only run as long as the command you specify is active.


# Running with an interactive container

# docker run -t -i ubuntu /bin/bash
In this example:

* docker run runs a container.
* ubuntu is the image you would like to run.
* -t flag assigns a pseudo-tty or terminal inside the new container.
* -i flag allows you to make an interactive connection by grabbing the standard in (STDIN) of the container.
* /bin/bash launches a Bash shell inside our container.



# starting a deamonized container

docker run -d ubuntu /bin/sh -c "while true; do echo hello world; sleep 1; done"

In this example:

* docker run runs the container.
* -d flag runs the container in the background (to daemonize it).
* ubuntu is the image you would like to run.

when the container becomes up then we see a long string fsdfsdf8fhsfhsf09o7fd98ohdfg  this is the container id 

# docker run -t -i ubuntu:14.04 /bin/bash
* in this docker will try to find the ubuntu:14.04 image form the doker hub
