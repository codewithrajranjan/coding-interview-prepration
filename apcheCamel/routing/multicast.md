* Often in enterprise applications you’ll need to send a copy of a message to several dif- ferent destinations for processing.
* when we do multicast then the messages are sent sequesntially means one is sent and then another is sent
* With Camel, you can use the multicast method in the Java DSL to implement this
solution:
so here we are sending the request to both accouting queue and production queue
from("jms:xmlOrders").multicast().to("jms:accounting", "jms:production");
