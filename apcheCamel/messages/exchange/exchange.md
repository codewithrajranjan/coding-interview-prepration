* In Camel, there are two abstractions for modeling messages, both of which we’ll cover in this section.
■ org.apache.camel.Message—The fundamental entity containing the data being carried and routed in Camel
■ org.apache.camel.Exchange—The Camel abstraction for an exchange of mes- sages. This exchange of messages has an “in” message and as a reply, an “out” message

* Messages are the entities used by systems to communicate with each other when using messaging channels. Messages flow in
one direction from a sender to a
receiver

* messages have 
    * body(a payload)
    * headers 
    * optional attachment
* Messages are uniquely identified with an identifier of type java.lang.String.

* An Exchange is the message container holding the information during the entire routing of a Message received by a Consumer.
* During processing down the Processor chain, the Exchange provides access to the current (not the original) request and response Message messages.
* the Exchange also holds meta-data during its entire lifetime stored as properties accessible using the various getProperty(String) methods. The setProperty(String, Object) is used to store a property.
* exchange also contains headers and attachments
