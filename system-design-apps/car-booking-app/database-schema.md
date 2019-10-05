> ## Schema design for car booking system


> ## User Table

This will hold the registered user of the system

- id : unique user id
- name
- email : unique
- mobileNumber : unique




> ## Car Table

This will store details of the car

- id : unique car id
- name
- company
- registraionNumber : unique
- status : enum with 0 or 1 : 0 car is inactive and 1 means car is active



> ## Booking

This will hold the instances of the currently booked car

- id : unique booking id
- carId : foreign key for car which has been booked
- userId : foreign key for user which has been booked
- startPoint : from where trip will start
- endPoint : where trip will end
- status : enum with 0 or 1 : 1 means trip completed 0 means trip running




> ## Process of car booking


### Feature 1 : User is able to view all the available cars

- Select * from cars where status = 1 and 






