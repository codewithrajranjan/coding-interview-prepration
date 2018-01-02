## What is Switch

- switch is quite intelligent
- switch contains a table where is keeps the record of interface and the corresponding mac address of the device connected to it
- so when a bit comes then switch know that to which interface it needs to send the data
- so there is not much usage of bandwidth
- initially the switch table is empty and later on it learns the mac address of the device connected to it
- switch rely on mac address and mac address is a part of data link layer so switch resides on data link layer



## How switch learns about the mac address of the device

- when the packet comes then the packet contains the destination ip address and source ip address
- switch searches in the switch table for the interfcae and mac id 
    - if it is not able to find the entry then it broadcasts the packet to all the devices connected in the switch
    - when the device with correct destination ip address finds the packet then it accepts it and sends the mac adress
    - All other devices discards the packet