* jms is a asynchronous messaging service
* jms provides ConnectionFactory which helps client like camel to connect it to jms



ConnectionFactory connectionFactory =
  new ActiveMQConnectionFactory("vm://localhost");

