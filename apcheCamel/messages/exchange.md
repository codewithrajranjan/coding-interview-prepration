* an exchange in camels is the message container during routing
* An exchange also provides support for the various types of interactions between systems, also known as message exchange patterns (MEPs).

The Camel exchange holds a pattern property that can be either
■ InOnly—A one-way message (also known as an Event message). For example, JMS messaging is often one-way messaging.
■ InOut—A request-response message. For example, HTTP-based transports are often request reply, where a client requests to retrieve a web page, waiting for the reply from the server.


# parts of exhange

* Exchange ID —A unique ID that identifies the exchange. Camel will generate a default unique ID, if you don’t explicitly set one.
■ MEP —A pattern that denotes whether you’re using the InOnly or InOut messag- ing style. When the pattern is InOnly, the exchange contains an in message. For InOut, an out message also exists that con- tains the reply message for the caller.
Exception —If an error occurs at any time during routing, an Exception will be set in the exception field.
■ Properties—Similar to message headers, but they last for the duration of the entire exchange. Properties are used to contain global-level information, whereas message headers are specific to a particular message. Camel itself will add various properties to the exchange during routing. You, as a developer, can store and retrieve properties at any point during the lifetime of an exchange.
■ In message—This is the input message, which is mandatory. The in message con- tains the request message.
■ Out message—This is an optional message that only exists if the MEP is InOut. The out message contains the reply message.



# Exchange defines two methods for retrieving messages 
* getIn - this return the incoming message
* getOut - this is used to access outbound message



There are two scenarios where the Camel end user will have to decide among using these methods:
■ A read-only scenario, such as when you’re logging the incoming message
■ A write scenario, such as when you’re transforming the message
In the second scenario, you’d assume getOut should be used. That’s correct accord- ing to theory, but in practice there’s a common pitfall when using getOut: the incom- ing message headers and attachments will be lost. This is often not what you want, so you must copy the headers and attachments from the incoming message to the outgoing message, which can be tedious. The alternative is to set the changes direct- ly on the incoming message using getIn, and not to use getOut at all. This is the practice we use in this book.
