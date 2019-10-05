


> ## Features

- seat should be assigned to only one user




> ## Integrity of seat

- A particular seat should be assigned to only one user
- It may happen that if the system is not designed correctly then same seat can be assigned to two different person
- If we are thinking about scaling aspect then there may be multiple instance of same service which will be talking to the database
- To tackle the above problem statement
    - We can create a table with name pre-booking with following columns
        - id
        - theaterId // id of the theater where booking will be done
        - showId    // show in which seat is getting booked
        - seatId    // seat number which is getting booked
        - userId    // user who is booking the ticket

    - we need to put a constraint on three columns that they have to be unique
        - theaterId + showId + userId   combination needs to be unique



