* the camel processor id an interface defined in org.apache.camel.Processor
* It has a single method

public void process(Exchange exchange) throws Exception;

* the processor is a low level api where you work directly on camel exchange instance
* it will give you full access to all camels moving parts form the CamelContext which you can obtain from Exchange using getCamelContext

* we can implemnt the Processor interface and write the processor logic in our own class 


import org.apache.camel.Exchange;
NOTE
Figure 3.2 In the Message Translator EIP, an incoming message goes through a translator and comes out as a translated message.
import org.apache.camel.Processor;
public class OrderToCsvProcessor implements Processor {
    public void process(Exchange exchange) throws Exception {
        String custom = exchange.getIn()
            .getBody(String.class);
        String id = custom.substring(0, 9);
        String customerId = custom.substring(10, 19);
        String date = custom.substring(20, 29);
        String items = custom.substring(30);
        String[] itemIds = items.split("@");
        StringBuilder csv = new StringBuilder();
        csv.append(id.trim());
        csv.append(",").append(date.trim());
        csv.append(",").append(customerId.trim());
        for (String item : itemIds) {
            csv.append(",").append(item.trim());
        }
        exchange.getIn().setBody(csv.toString());
    }
}

* using the processor has one disadvantage i.e you are required to use camel api 
* when we set data in the processor using inOut then the headers and attachments are not carrried forward so this creates a problem
* we can use getIn() and getOut() methods defined on exchange is used to retrieve and set data.
* getIn() method returns the incoming message 
* getOut() method accesses the outbound message
