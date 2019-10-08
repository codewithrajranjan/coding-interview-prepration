* we use org.apache.camel.builder.RouteBuilder class to creates routes
* we will extend our own RouteBuilder class to create routes
```
class MyRouteBuilder extends RouteBuilder {
    public void configure() throws Exception {
        ... }
}
```

You then need to add the class to the CamelContext with the addRoutes method:
    CamelContext context = new DefaultCamelContext();
    context.addRoutes(new MyRouteBuilder());
    Alternatively, you can combine the RouteBuilder and CamelContext configuration by adding an anonymous RouteBuilder class directly into the CamelContext, like this:
    CamelContext context = new DefaultCamelContext();
    context.addRoutes(new RouteBuilder() {
            public void configure() throws Exception {
            ...
            } });

# routes are build using the RouteBuilder class inisde RouteBuilder class we have a configure method that can be used to build routes
# camelContext object has a method known as addRoutes and we pass the RouteBuilder object to the addRoutes method
# inside the configure method we use DSL language to add endpoints and components to the routes
