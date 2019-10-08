* The processor is a core Camel concept that represents a node capable of using, creat- ing, or modifying an incoming exchange. During routing, exchanges flow from one processor to another; as such, you can think of a route as a graph having specialized processors as the nodes, and lines that connect the output of one processor to the input of another. :w
* we can add processor to process the data that has been recieved form the endpoints using process
* on a route we can add a new function named function named process and a new object of type Processor() will be injected to it

```
from("ftp://rider.com/orders?username=rider&password=secret").
process(new Processor() {
        public void process(Exchange exchange) throws Exception {
        System.out.println("We just downloaded: "
                + exchange.getIn().getHeader("CamelFileName"));
        } }).
to("jms:incomingOrders");
```
* we can access the messge or exhange inside the processor

