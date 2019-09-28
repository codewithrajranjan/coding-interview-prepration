> ## What is RabbitMQ


> ## How to install RabbitMQ using Docker

- RabbitMQ can be installed in multiple ways. There is a list of installation steps available on the their website for different working environment and operating system. 
- Following is the link : https://www.rabbitmq.com/download.html
- we will be using docker to install RabbitMQ. You need to have docker and docker-compose installed on your machine for installing RabbitMQ.


```bash
---
# we are using the version 2 of docker compose

version: "2"

# This section list all the services that will run in this docker compose file
services:
    # we are creating a service with name as rabbitmq
    rabbitmq:
        # when rabbitmq service will start then it will create the rabbitmq_selftuts container
        container_name: rabbitmq_selftuts  

        # we are using the official image given by rabbitmq. we are using version 3 of rabbitmq with management plugin.
        # Offical Page for RabbitMQ on docker hub.https://hub.docker.com/_/rabbitmq
        image: rabbitmq:3-management       

        # These are the environment variable that will be available inside the docker compose file
        environment:
           RABBITMQ_DEFAULT_USER: user
           RABBITMQ_DEFAULT_PASS: password
           RABBITMQ_DEFAULT_VHOST: /

        # These are the ports that will be exposed so that the container can talk to outside world
        ports:
           - 15673:15672 # This is management plugin port
           - 5673:5672   # Thi is RabbitMQ server port

        restart: always

```



> ## RabbitMQ Architecture for Beginners 

- RabbitMQ is a message broker based on AMQP (Advanced Messaging Queueing Protocol).
- AMQP protocol basically works on the application layer and it is responsible for the interaction between process to process or application to application.
- AMQP protocol was designed with the concept in mind that different application can interact with each other irrespective of their implementation i.e. which language they are using or which database they are using etc.
- AMQP protocol consists of following components
    - Broker (Server) : An application implementing the AMQP protocol. RabbitMQ is one such broker. Broker consists of following parts
    - Prodcuer : An application that sends message to the broker.
    - Consumer : An application that reads or consumes message from the broker
- If we go into the details of Broker then if further consists of following parts
    - Exchange : This is the point of contact for the producer application which means that messages are first received by the exchange
    - Queue    : This is the part of broker where messages are stored.

- TODO need to add a diagram


