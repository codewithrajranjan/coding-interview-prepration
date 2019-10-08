* when we do simple multicast then the messages are sent sequentially i.e. one after the another
* but situation arises when we want to do simultaneous multicasting then we need add parallelProcessing to it

from("jms:xmlOrders")
    .multicast().parallelProcessing()
        .to("jms:accounting", "jms:production");
        

* a default thread pool of 10 is used unless we specify anything

A default thread pool size of 10 is used if you don’t specify anything else. If you want to change this default, you can set the underlying java.util.concurrent.Exec- utorService that’s used to launch new asynchronous message sends by using the
executorService DSL method. Here’s an example:
ExecutorService executor = Executors.newFixedThreadPool(16);
from("jms:xmlOrders")
    .multicast().parallelProcessing().executorService(executor)
        .to("jms:accounting", "jms:production");



* By default, the multicast will continue sending messages to destinations even if one fails. In your application, though, you may consider the whole process as failed if one destination fails. 


# stopOnException
* in this case of multicating if any one message fails then this stops the process


from("jms:xmlOrders")
    .multicast().stopOnException()
        .parallelProcessing().executorService(executor)
            .to("jms:accounting", "jms:production");
