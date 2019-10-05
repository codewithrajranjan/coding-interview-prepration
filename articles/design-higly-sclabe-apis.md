> ## How to design highly scaleable REST apis

- Microservice based architecture
    - System should be divided into multiple micro service
        - this gives us language level benifit for different features like we can use NodeJs of IO intensive task and for CPU intensive we can go for Java, Python
    - Scaling of a single api is also allowed like if one of the read api is used frequently then we can go for scaling only that micro service

- API Gateway
    - since there are multiple micro service so we need to remove the dependency where client directly talks to different micro service. 
    - Client will talk to single service called as API Gateway and this API Gateway will take the responsibility of talkin g to multiple micro service

- Load Balancer should be implemented
    - this is must for designing scalable apis

- serverless
    - if we need to scale only single apis then we can go for serverless architecture like lambda from the AWS

- Analytics in your api
    - you need to have analytics in your API so that you can monitor the discrepancy
