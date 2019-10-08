* wireTap means sending the copy of exchange to another destination without affecting the rest of the routes
from("jms:incomingOrders")
.wireTap("jms:orderAudit")
.choice()
    .when(header("CamelFileName").endsWith(".xml"))
            .to("jms:xmlOrders")
                .when(header("CamelFileName").regex("^.*(csv|csl)$"))
                        .to("jms:csvOrders")
                            .otherwise()
                                    .to("jms:badOrders");


The preceding code sends a copy of the exchange to the orderAudit queue, and the original exchange continues on through the route, as if you hadn’t used a wire tap at all. Camel doesn’t wait for a response from the wire tap because the wire tap sets the message exchange pattern (MEP) to InOnly. This means that the message will be sent to the orderAudit queue in a fire-and-forget fashion—it won’t wait for a reply.

