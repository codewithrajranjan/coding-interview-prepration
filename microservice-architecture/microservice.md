> ## Challenges of Micro service architecture

- Distributed Computing challenges
    - since the microservices are running at different nodes so it mimics the scenario of distributed computing

- Remote Calls are expensive

- Distributed Transactions
    - since multiple apis are called to perform a single business logic so it is hard to achieve transactions
    - we need to use two phase commit, three phase commit or saga approach

- Handling service unavailability

- Integration and end to end testing becomes difficult



> ## Solving above challenges

- Central configuration
    - centralized versioned configuration system should be implemented like zookeeper
    - changes are dynamically applied to micro services

- Service Discovery
    - every service should register itself with a service discovery and the server tells everyone that who is online
    - this removes the hard coding 

-  Inter process communication
    - need to implement efficient inter process communication strategy 
    - it can be REST, message based communication like AMQP

- Authentication and Authorization
    - Single sign on should be implemented

- Eventual Consistency
    - we need to handle business transaction that span multiple services
    - we can use two phase commit, three phase commit or saga approach

- Distributed Session
    - sessions should not be stored on the server
    - like single sign on we should have session management

- Distributed Caching

- Detailed monitoring

- Auto Scaling 

- Polyglot support
    - Different services can be developed in different languages

- Log Aggregration


