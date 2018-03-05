# setTimeout

- setTimeout function helps us to interact with the event loop of nodejs
- calls the given callback function after the given delay

```javascript

    // delay is the quantity after which this function will be called
    setTimeout(fn,delay);

```

- This doesn't give the guarantee that the function will get executed after the given delay
- setting the delay to 0 adds the callback to the queue immediately so that it is executed as soon as all currently-queued functions are finished.

## What will be the output

```javascript

    console.log("1");
    setTimeout(function(){
        console.log("2")
    },0);
    console.log("3")

```

 Output:
 1
 3
 2