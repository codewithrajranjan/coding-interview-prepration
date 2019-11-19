> ## Docker Container

- A container is a running instance of an image.
- There can be multiple docker container in a single machine
- containers are completely isolated from one another as well as from the host machine




> ## What happens when you start a docker conatiner

- when you start a container then you refer to an image through its unique ID
- Docker pulls the required image and the parent images
- It continues to pull all the parent image until the based image is reached


> ## docker ps -a

- this will list all the running container and stopped container



> ## stoppin all containers
docker stop $(docker ps -a -q)


> ## Removing all containers
docker rm $(docker ps -a -q)


> ## Docker container in Interactive mode

- docker run -i -t ubuntu /bin/bash
    - -i flag says that run in interactive mode
        - if you are not using the -i flag then the docker container will be started or created but you can't interact with the container
    - -t flag allocates a pseudo tty or pseudo terminal and then assigns that to the container
        - if you don't assign the -t flag then docker container will start but no terminal will be attached
    - /bin/bash is the command that will be executed in that terminal


> ## docker ps 

- List all the running container. It shows important information
    - Container Id : unique id for the container 64 hex digit. By default docker ps only shows 12 hex digits but you can use the --no-trunc flag to see all 64 hex digit
    - Image : The image from which this container was made
    - command : command executed during the container launch
    - created :  when was container created
    - status : current status of container
    - ports : tells if any port has been assigned to the container
    - name : docker engine auto generates a name if you nave not given using the --name flag




> ## docker diff <container-id>

- it inspects the container file system 
    - what changes you have done
    - C prefix in output says that it is modified
    - A prefix in output says that it is added
    - D prefix in output says that it is deleted





> ## docker stop <container-id>

- this will stop the container id
- When a user issues this command, the Docker engine sends SIGTERM (-15) to the main process, which is running inside the container.
- The SIGTERM signal requests the process to terminate itself gracefully. 
- Most of the processes would handle this signal and facilitate a graceful exit. 
- However, if this process fails to do so, then the Docker engine will wait for a grace period. Even after the grace period, if the process has not been terminated, then the Docker engine will forcefully terminate the process. 
- The forceful termination is achieved by sending SIGKILL (-9). The SIGKILL signal cannot be caught or ignored, and so it will result in an abrupt termination of the process without a proper clean-up.


> ## docker start <container-id>

- this will start a container which is present in stopped state
- this has no effect on an already running container

> ## docker restart <container-id>

- this the combination of 
    - docker stop <container-id>
    - docker start <container-id>



> ## docker pause <container-id>

- freeze the execution of all the process where it was running
- this has a useful implication when we use the docker commit command on a running container


> ## docker unpause <container-id>

- unfreeze the execution of all the process withing the container and resume the execution from the point where it was frozen

> ## docker run -i -t --rm <image-name> <command>

- the --rm option is used to cleanup (remove) the container as soon as it reaches the stopped state
- this will help us to save space on the local file system



> ## docker commit <container-id> <new-image-name>

- this will help us to create a new image from the existing container
- if if is performed on a running container then the docker engine will pause the container 


> ## docker run -d <image-name>

- this will run the container in detached mode
- which means that this will run the container in daemon mode
















