* Transform() is a method in the Java DSL that can be used in Camel routes to trans- form messages. 
* from("direct:start")
.transform(body().regexReplaceAll("\n", "<br/>"))
.to("mock:result");


Camel also allows you to use custom expressions. This is useful when you need to be in full control and have Java code at your fingertips. For example, the previous example could have been implemented as follows:
from("direct:start")
.transform(new Expression() {
        public <T> T evaluate(Exchange exchange, Class<T> type) { String body = exchange.getIn().getBody(String.class); body = body.replaceAll("\n", "<br/>");
        body = "<body>" + body + "</body>";
        return (T) body;
        }
        })
.to("mock:result");

#Advantages 
* we can transform the message form the dsl itself so this can save time
