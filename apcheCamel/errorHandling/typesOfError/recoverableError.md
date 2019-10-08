* A recoverable error, on the other hand, is a temporary error that might not cause a problem on the next attempt. A good example of such an error is a problem with the network connection resulting in a java.io.IOException. On a subsequent attempt, the network issue could be resolved and your application could continue to operate.
* In Camel, a recoverable error is represented as a plain Throwable or Exception that can be set or accessed from org.apache.camel.Exchange using one of the follow- ing two methods:
void setException(Throwable cause);
or
Exception getException();
* Exceptions are represented as recoverable errors.
