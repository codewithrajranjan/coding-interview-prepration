> ## BookMyShow system design

- Note Book my show is a system aggregator
- Seats can be booked in two ways 
    - Book my show has the full authority of seats like 
        - the events that it is conducting
        - It has done tie up with other busineess and Book my show is has provided the whole platform for for ticket booking
    - Book my show is acting as an aggregator and it is using the already deployed system of the original ticket giver
        - e.g take the case of PVR it has it own ticket booking system and BMS will call the rest api of PVR

> ## Which language to choose

- since we will be calling rest api very much and much of CPU intensive task is not there so we will go for nodejs or coroutine in python


> ## Features to be supported

- Highly concurrent
- Responsive UI
    - mobile 
    - Tablet
    - web
- Multiple cites
- Recommendation
- Comments and rating
- Movie info
    - Actors 
    - Trivia
- Notification



> ## Microservice architecture

- Create a API Gateway in between
    - that will do the orcherstation
    - only this API Gateway will be on the exposed world so that other services 
    - Rate limiting can be applied on this layer
    - User blocking can be on this layer only

- Go For micro service architecture 
    - Payment micro service
    - tickets microservice
    - Recommendation microservice
    - Notification microservice
    - Billing Microservice

- Go for ui composition architecture
    - each microservice will expose its own web components 
    - then ui composition 
 



