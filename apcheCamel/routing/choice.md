* used in content based routing
* The choice method creates a CBR processor, and conditions are added by following choice with a combination of a when method and a predicate.
* in EIP the used term is contentBasedRouter but the camel people stick to choice
* choices can be blocked using end method

```
    from("jms:incomingOrders")
.choice()
    .when(predicate) .to("jms:xmlOrders")
    .when(predicate) .to("jms:csvOrders");
    ```


    * so in this case all the incomig orders are transferrd to the incomingOrders of the jmsQueue 
    but he order can be in either csv format or in xml format so we need make a choice while processig it so we need the choice 


    context.addRoutes(new RouteBuilder() {
            public void configure() {
            from("file:src/data?noop=true").to("jms:incomingOrders");


            from("jms:incomingOrders")
            .choice()
            .when(header("CamelFileName")
                    .endsWith(".xml"))
            .to("jms:xmlOrders")
            .when(header("CamelFileName")
                    .endsWith(".csv"))
            .to("jms:csvOrders");


            from("jms:xmlOrders").process(new Processor() {
                    public void process(Exchange exchange) throws Exception {
                    System.out.println("Received XML order: "
                            + exchange.getIn().getHeader("CamelFileName"));
                    Test routes that print C message content
                    } });
            from("jms:csvOrders").process(new Processor() {
                    public void process(Exchange exchange) throws Exception {
                    System.out.println("Received CSV order: "
                            + exchange.getIn().getHeader("CamelFileName"));
                    } });

            }
    });



# ending the choice 

    from("jms:incomingOrders")
.choice()
    .when(header("CamelFileName").endsWith(".xml"))
    .to("jms:xmlOrders")
    .when(header("CamelFileName").regex("^.*(csv|csl)$"))
    .to("jms:csvOrders")
.otherwise()
    .to("jms:badOrders")
.end()
    .to("jms:continuedProcessing");
