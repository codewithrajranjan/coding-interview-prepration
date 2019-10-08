* this is the language that is used by camel to wire up routess and endpoints
In Camel, DSL means a fluent Java API that con- tains methods named for EIP terms.
Consider this example:
from("file:data/inbox")
.filter().xpath("/order[not(@test)]")
.to("jms:queue:order")



# the same route can be defined in spring

<route>
<from uri="file:data/inbox"/>
<filter>
<xpath>/order[not(@test)]</xpath>
<to uri="jms:queue:order"/>
</filter>
</route>


* the language defined in th camel dsl is standard terms used in EIP books
