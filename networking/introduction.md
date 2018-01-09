- If you ping the same domain name from different location then it is not compulsory that both of you will get the same ip address
- port numbers are 16 bit values
## Default port for standard programs


* 22 - ssh
* 


## Why ports below 1024 are not available

* It is available for super user. so you can start the server below port 1024 using the sudo command


## What is is nc

* nc stands for netcat
* it is a program used to create connection to a server
* we can create our own server by using nc -l port_number
* we can connect to server usin nc ipaddress port_number
* nc creates server using TCP layer only
* the minimum port number on which nc can listen in 1024. This is not the case if we start nc using sudo command then it can start a server below port 1024
* the highest port number on which nc can listen is 65535



## what is lsof

* it is list open files including network sockets (listening or connected)
* the -i flag can tell only to list network sockets


## DNS 

- domain name system
- there are different types of dns records like a records
- CNAME is for canonical name
- AAAA(quad A) - is for IPV6 address
- NS is for DNS name server
- dns is a distributed directory system
- no one dns server needs to know all the domain names


## host utility

- this utility is to lookup the dns records
- you can type the command as host www.google.com
- to get the a record you can type as host -t a www.google.com


## dig tool

- this is also used for dns lookup
- dig is more in script format


## IP address

- IP address is a 32 bit long binary number.
- any ip address has two parts 
    - network part 
    - host part
    - if the ip address is like 198.51.100.3/24 this means that the first 24 bit are available for network which means I can only have host adrress which can be configured with last 8 bits
    - if the ip address is like 198.51.100.3/25 this means that the first 25 bits are available for network which means I can have host address with can be configured with last 7 bits 
- the first and the last ip address are reserved

## Subnetting 

- more efficient management of ip address
- ip address that don't use the subnetting concept consist of 
    - a network portion
    - a host portion
- ip address that use subnets has three parts
    - the network portion
    - a subset portion
    - host portion
- in subnet what we do is that the number of bits available for addressing the host is sub-divided into two parts 
    - one is the subnet portion
    - remaining part is to address the host
- subnetting is achieved through address mask. which tells that which portion of ip address is the host and which portion of ip addres is the host
- there can be two type of network masks 
    - Natural / Default network masks
    - Custom / Subnet network masks
- the mask is a series of one and zeroes and the number of one in the beginning will tell that how many bits will denote the network part
- given an ip address and a subnet mask. The network can be found by bitwise ending the both
    - lets say the ip address is 10.0.0.20 so bit representation is 00001010 00000000 00000000 00010100
    - lets say mask is 255.0.0.0 then the bit representation is 11111111 00000000 00000000 00000000
    - if we do bit wise and then the result will be 10.0.0.0 where 10 is the network number

- class A, B and C address have fixed divison of network and host portion
- so the network mask for
    - class A = 255.0.0.0
    - calss B = 255.255.0.0
    - class C = 255.255.255.0




