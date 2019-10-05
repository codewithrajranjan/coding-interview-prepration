> ## Schema for Hotel Room booking System


## Customer Table Schema
This will contain the information about the customer

- id : (PK)                 // unique id of the room
- name : varchar            // name of the customer
- emailId : varchar         // email id of the customer. Can be used for sending emails
- active : boolean          // tell the status of the customer that he is active or suspended



## Hotel Table Schema

This will contain some basic information about the hotel

- id : (PK)                     // Unique id for the hotel
- name : varchar NOT NULL       // name of the hotel 
- State : varchar NOT NULL      // State in which this hotel is located
- District : varchar NOT NULL   // District in which this hotel is located
- latitude : NOT NULL           // latitude of the hotel
- longitude : NOT NULL          // longitude of the hotel



## Room Table Schema
This will contain the room information 

- id : (PK)                     // unique id for the Room
- hotelId : (FK)                // reference to the hotel to which this room belongs
- roomNo  : int NOT NULL        // number given to the room
- floorNo : int  NOT NULL       // floor given to the room
- checkInTime : time NOT NULL   // check in time of the room
- checkoutTime : time NOT NULL  // checkout time of the room
- bed : int NOT NULL            // total bed in the room
- bathroom : int NOT NULL       // total bathroom in the room
- price : int NOT NULL          // price of the room



## Reservation table Schema
This will hold the details about the current reservation

#### A single reservation can contain multiple rooms that's why the room details will go to separate table
#### we are talking into consideration that all the rooms will be booked for same time period so the start date and end date is given here

- id (PK)                           // Unique id given to the booking
- userId :  (FK) NOT NULL           // User who has booked this rooom
- hotelID : (FK) NOT NULL           // Hotel in which this room has been booked
- startDate : dateTime NOT NULL     // start time for booking
- endDate  : dateTime NOT NULL      // end date for booking

## Room reservation table
This will store the rooms that have been reserved in a particular reservation

- id (PK)                   // unique id for the room reservation
- reservationID (FK )       // id of the reservation
- roomID (FK)               // id of the room that has been booked








