* An irrecoverable error is an error that remains an error now matter how many times you try to perform the same action again. In the integration space, that could mean trying to access a database table that doesn’t exist, which would cause the JDBC driver to throw an SQLException.
* An irrecoverable error is represented as a message with a fault flag that can be set or accessed from org.apache.camel.Exchange. For example, to set "Unknown customer" as a fault message, you would do the following:
Message msg = Exchange.getOut();
msg.setFault(true);
msg.setBody("Unknown customer");
The fault flag must be set using the setFault(true) method.
* Fault messages are represented as irrecoverable errors.
