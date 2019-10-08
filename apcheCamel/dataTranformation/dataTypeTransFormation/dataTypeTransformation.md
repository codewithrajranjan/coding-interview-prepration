* in this data type of message body is transformed from one type to another
* for example java.lang.String id transformed into javax.jms.TextMessage


* Each data format is represented in Camel as an interface in org.apace.camel.spi.DataFormat containing two methods:
■ marshal—For marshaling a message into another form, such as marshaling Java objects to XML, CSV, EDI, HL7, or other well-known data models
■ unmarshal—For performing the reverse operation, which turns data from well- known formats back into a message
