> ## Dockerfile

- Dockerfile is a text-based build script that contains special instructions in a sequence for building the right and relevant images from the base images.
- The sequential instruction can include
    - base image selection
    - installing the required application
    - adding the configuration and data files
    - automatically running the services 
    - exposing the service to the external world

- The docker server or daemon is responsible for the complete build process
- Docker client is responsible for transferring the build context, including transferring Dockerfile to the daemon

- the dockerfile follows following syntax
    - INSTRUCTION arguments
    - this means that every line contains an instruction and arguments to that instruction


- 


> ## docker build <path-to-docker-file>

- 


> ## Build context


> ## docker build -t <name-of-docker-image> <path-to-Dockerfile>


> ## Instruction in Dockerfile

-  FROM <image-name>  =  The base image selection 
-  CMD <command>      =  These commands will run when you will create a container from the docker image build using this dockerfile


