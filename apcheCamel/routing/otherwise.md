* we also need to handle the routes when the content is not according to our need 
* so with choice we can use otherwise thing so that we can process those requests

* so we can see that if the headers doesn't match to our choice constraints then we need activate another processor
    from("jms:incomingOrders")
.choice()
    .when(header("CamelFileName").endsWith(".xml"))
    .to("jms:xmlOrders")
    .when(header("CamelFileName").regex("^.*(csv|csl)$"))
    .to("jms:csvOrders")
    .otherwise()
    .to("jms:badOrders");
