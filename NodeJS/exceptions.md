# Exceptions 


## What is uncaught or unhandled exception in Nodejs

TODO


## Why it is not advised to handle the uncaught exception silently

- Most of the developer follow the code of handling uncaught exception silently.

```javascript 

    process.on('uncaughtException',function(err){
        console.log(err);
    });

```

- This is dangerous to do as when an uncaught exception occurs then the program becomes in unclean or corrupt state and if you continue to run the application in unclean state then it can behave weird


## What are the different ways to handle uncaught exception

- use of process.on('uncaughtException') 
- Allow the process to restart using forever, pm2 or upstart
- use of domain module