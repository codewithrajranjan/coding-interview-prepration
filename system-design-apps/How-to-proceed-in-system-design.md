Note system design is an iterative process you can't do a perfect system design in one go.

> ## Identify the objects in the system

- Identify the properties of the object
- Identify the behaviours associated with those objects


> ## Model Design

- Start with simple tables and then try to modify the table




> ## Database

- It's not mandatory that you need to use only one database
- You can use more than one database in your design
    - Transaction based systems can use RDBMS
    - Meta data can be stored in nosql datbase
        - like in movie reservation system we can store the movie details like trivia, actors etc can be stored in no sql database

- Replication of database
    - Master Master replication
    - Master Slave replication
- Disaster recovery


> ## Frontend

- caching in frontend
- CDN usage for js and images



> ## Scaling of system

- Horizontal scaling should be done


> ## Notifications and email

- This should be done in asynchronous way
- You of queue like rabbitmq or kafka


> ## Machine Learning or Big Data

- Data should be used in machine learning for recommendation engine


> ## Microservice architecture

- Whole system should be designed based on multiple micro service.
- this helps us to scale only those micro service that are needed

> ## Load Balancer must be shown in the architecture

- you need to show the load balancer in the system so that the system can be scaled

> ## Multiple Instances of the application

- You need to show multiple instances of the same application so that scaling thing is covered in this





