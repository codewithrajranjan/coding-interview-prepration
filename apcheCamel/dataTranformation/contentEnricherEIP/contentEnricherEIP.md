* the content enricher eip enriches the message with data obtained from another source

* camel used two operation on the dsl to implement this pattern
    * poll enrich - this operation merges data retrieved from another source using a consumer
    * enrich - this operation merges data retrieved from another source using a producer

* Camel uses the org.apache.camel.processor.AggregationStrategy interface to merge the result from the source with the original message, as follows:
Exchange aggregate(Exchange oldExchange, Exchange newExchange);


* This aggregate method is a callback that you must implement. The method has two parameters: the first, named oldExchange, contains the original exchange; the sec- ond, newExchange, is the enriched source. Your task is to enrich the message using Java code and return the merged result. 
