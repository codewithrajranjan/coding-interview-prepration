# configuration file mainly contains configuration for following things
* naming the components of the agent 
    a1.sources = r1 r2  // here we are having to sourves for the agent a1
    a1.sinks = k1
    a1.channels = c1


* describing or configuring the source

    a1.sources.r1.type = netcat
    a1.sources.r1.bind = localhost
    a1.sources.r1.port = 9003


* describing the sink
    a1.sinks.k1.type = logger



* describing the channel

    a1.channels.c1.type = memory
    a1.channels.c1.capacity= 1000
    a1.channels.c1.transactionCapacity = 100  // channel to sink capacity trandfer is 100 bytes



* now binding all these things
   
    a1.sources.r1.channels=c1
    a1.sinks.k1.channle=c1

