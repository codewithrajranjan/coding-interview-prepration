## What is tcp?

- Transport control protocol
- makes reliable connections
- this protocol is choosed when data is important. 
- When there is need to check that the data has been recieved by the destination or not. This is done using acknowledgements(acks)




## Three way handshake

- Before establishing the connection we need to perform the three way handshake



## How acknowledgement is done

- when segment is sent then there is a sequence number attached to it.
- Suppose we sent a packet with sequence no 1
- The reciever will sent the acknowledgement with sequence no 2 which means
    - the I have recieve the last packet and now send me the packet with sequence no 2

```
    ------------------s.1----------------->    // packet being sent
   <----------------a.2----------------------- // acknowledge being sent

```

