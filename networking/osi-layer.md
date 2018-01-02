## What is an OSI Layer Model

An osi layer model has 7 layers

1. Application
    - Deals with networking application
    - Email, Web-Browsers, Command line applicatios, WhatsApp etc.
    - Data is the form of user data. PDU = User Data
2. Presentation
    - Responsible for presenting data in required format. 
        - Like for YouTube it will be video format
        - For Spotify it will be audio format
        - for google images it will be image format
    - Encryption - data encryption is done here. Data is converted into some coded format 
    - Compression - Data is compressed here.
    - Data Format PDU = Formatted Data
    - Every thing is done behind the scene. You need not to worry about anything
3. Session
    - creates session, manages session and destroys session
    - Data Format PDU = Formatted Data
    - netstat helps to view all the sessions
4. Transport
    - data is taken from the session layer and broken down into smaller segements. This is called segmentation.
    - All the segment is of same size
    - Each segment is given a sequence number
    - Transport layer adds header to each segement
    - Transport layer takes the decision to send data in reliable connection or unreliable connection
        - Reliable : TCP. Connection oriented e.g HTTP, file downloading, telnet, ftp
        - Unreliable : UDP. Connection less
    - assembly and reassembly of the data
    - port number is added at transport layer
    - mss = maximum segment size
    - Things added in transport layer  and this is added in the header
        - sequence number
        - acknoweledge number
        - port number
    - Data Format = segments
    
5. Network
    - Network layer adds its own header
6. Data
7. Physical