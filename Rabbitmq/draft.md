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




AMQP protocol and rabbit mq

- amqp = advanced messaging queing protocol
- amqp sits on the application layere. Application layer is the layer with which users interact. It also defines how process to process or application to application communications takes place
- some other protocol other than AMQP that works on application layer is 
	- IRC
	- DNS
	- FTP
	- IMAP
	- SSH
- AMQP protocol was created with the concept in mind that different application can interact with each other regardless of their internal designs like in which languge they have been written, which database they are using etc
- Before AMQP also there were messaging protocol but they interoperatabilty was missing. There was simply not a way that one can work with another. you need to write some additional layer like messaging bridge to convert one format to the other

- high quality
- guranteed message delivery
- messasge acknowledgements  : Messages from the queues are not dropped or removed until we send a positive acknowledgement from the consumer.
- AMQP consits of four entities
	- Broker(server) an application implementing the AMQP protocol. Broker can be thought to consist of below components
		- Exchange : Part of broker that directly recieves the messages
		- Queue : Part of broker from where consumers recieves messages
		- Bindings : Rules from distributing messages from exchange to queues
	- Message : content of data transferred like payload and message attributes
	- producer : An applictio that puts messages to the queue via an exchange
	- consumer : An application that recives messages put by the producer

- Exchange 
	- Exchange recieves messages from the publisher
	- It can send the message to one or more queues depending on the type of exchange
		- Direct
			- This work on the delivery of message based on the routing keys.
	    - Fanout
			- this completely ignores the routing key and delivers the message to all the queues
		- Topic
		- Header
