# Exit code in nodejs

- exit codes are specific code that are used to end a process
- Non Zero exit codes are treated as failures
- only exit code 0 (zero) is treated as success


## Different ways to exit nodejs

- **process.exit(exitCode)** : calling the exit method on global process object will exit the program

```javascript

     setTimeout(function(){
         process.exit(0);
     },5000);

```

- **process.kill()**
  - the process.kill method takes the PID of the process as well as the signal that we want to send to the process
  - This means that we can send signals to kill processes other than the main nodejs process
  - This is useful in highly concurrent application

```javascript

     setTimeout(function(){
         process.kill(process.pid);
     },5000);

```

- **process.abort**
  - this is used to kill or abort the nodejs process
  - this exits nodejs immediately and generates core file
  - no event call back will be run which means process.on('exit') event will be called
