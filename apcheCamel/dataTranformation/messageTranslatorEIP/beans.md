* using beans is a great practive beacuse it allows yout ot use any java code and library you wish

public class OrderToCsvBean {
    public static String map(String custom) {
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
        return csv.toString();
    }
}


from("quartz://report?cron=0+0+6+*+*+?")
.to("http://riders.com/orders/cmd=received&date=yesterday")
.bean(new OrderToCsvBean())
    .to("file://riders/orders?fileName=report-${header.Date}.csv");

    * the advantage of using beans over processor is the testing of beans is much easier

# Benifits of using beans
    * we don't need to use low level camel api
    * we can name the method signature whatever we want
    * the method signature defines the contract
    * which means the first parameter is the message body you are going to use for translation
    * the method returns a string so the return type of message will be a string
    * unit testing of beans is much more easy than the Processor
    * when we use exchange in Processor then we need to create a exchange type object for unit testing which should have getIn and getOut method 
    * but if we are using bean then we don't need to create and exchange object to be passed to the unit testitG

    ```
    from("quartz://report?cron=0+0+6+*+*+?")
    .to("http://riders.com/orders/cmd=received&date=yesterday")
     .bean(new OrderToCsvBean())
    .to("file://riders/orders?fileName=report-${header.Date}.csv");
    ```
