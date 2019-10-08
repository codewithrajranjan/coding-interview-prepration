> ## Best Practice while writing Celery Task

- If your task does I/O like calling other micro service then you should use the connect timeout and read timeout values so that the connection shouldn't hang and then the worker should be able to perform correctly
- If you are using task decorator to create a task then the task decorator should be applied at last if you are using multiple decorator on same method
- Celery supports task inheritance


> ## Bound Task

- A task being bound means that the first argument to the task is always the task instance same as python self
- Task are bounded by using the bind=True option in the task

```python

    @task(bind=True)
    def add(self, x, y):
        logger.info(self.request.id)

```
- Bound is important because you can use the task instance for doing task retry other stuff related to the task instance

> ## Task Retry
- Task retry is supported in clery
- If you want to perform retry on the task then it should be bound task
- you can provide multiple arguments to the retry task like countdown for the interval between retry and max_retries for total time the retry should be done



> ## How messages are handled in celery RabbitMQ

- A task message is not removed from the queue until that message has been acknowledged by the worker



> ## Acknowledgement

- when writing task in celery one important thing to consider is that the tasks should be idempotent which means that if the same task is run multiple times with same message then it should not have unintended effects. same as the PUT HTTP Verb o f REST API
- so by default celery worker sends acknowledgement when the task is received and before execution
- If you want that the message should be acknowledged after that task has been completed then in that case you need to use the acks_late configuration in the task
- Note that the worker will acknowledge the message if the child process executing the task is terminated either by task calling sys.exit() or signal. Even if the acks_late is true then also the message will be acknowledged



> ## What happens if there is power failure and worker is having some messages

- Even if the worker is having some message and in between the power failure occurs 
- since the acknowledgement has not been received by RabbitMQ so it will redeliver that message to some other worker


> ## What if some business logic have been performed by the worker and then it crashed

- since a part of business logic has been performed and then the worker crashed so this message will be re delivered to some other worker because acknowledgement was not received by the RabbitMQ
- Now RabbitMQ is not responsible for the work that has been already performed on some target microservice.
- It the responsibility of the target system to handle those failure scenarios
- One design paradigm can be useful that the task should have a single responsibility only which means it should only effect one microservice and not multiple



> ## States and Result Backend

- Celery can keep track of the current task states
- The state can also contain the result of successful task or exception and traceback information of the failed task


> ## Celery Workers

- Celery workers act as consumer
- Celery workers uses multiprocessing to perform the concurrent execution of the task
- The number of process can be changed using the concurrency option
- you can start more than one worker on the same machine with different number of process
- when you run the worker command with concurrency = 10 then it will start 10 concurrent worker process
- Celery workers consist of four main components
    - the consumer
        - Recieve message from broker using kombu
        - When the message is recieved it is converted to celrey.worker.request.Request object
        - Tasks with ETA or rate limit are entered into the timer
        - messages that can be immediately processed are sent exection pool
    - the scheduler
        - it schedules internal function like cleanup and internal monitoring.
        - it also schedules ETA task and rate limit task
    - mediator
    - task pool
        - Slightly modified version of multiprocessing.Pool
        - It mostly works on the same way except it gurantees that the worker is running all the time
- Celery used headq to schedule internal functions



> ## Messages

- Messages can be in different format 
    - json  application/json
    - yaml    application/x-yaml
    - pickle  application/x-python-serialize
    - msgpack application/x-msgpack
