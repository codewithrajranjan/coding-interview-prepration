# Nodejs interview questions

## __filename in nodejs

- This represents the filename of the code being executed
- This is the absolute path of the filename

## __dirname in nodejs

- This represents the current directory in which script is executing

## What is Asynchronous API

When server calls an API then if it doesn't wait for the response then in that case the API is called as asynchronous API. Server moves to next API and through the mechanism of event, server manages to get the response of the previous API Call


## Error first callback

- Error first callback are such callback functions that accepts two parameter.
- first parameter is the error object
- second parameter is the data
- you need to check the error object first. If its null then everything is fine

```javascript

    fs.readFile(filePath,function(err,data){

        if(err){
            // handle error
        }
        // write your logic here

    });

```

## Consider the following code

The time required to run in Google chrome is more than the time taken in Nodejs

```javascript

    console.time("loop");
    for (var I = 0; I < 1000000; I += 1){
        // Do nothing
    }
    console.timeEnd("loop");

```

- When the code runs in chrome browser then declaring variable I outside scope of any function  makes it global and therefore binds the property to the window object. As a result when the value of I is accessed each time then the value is retrieved form the heavily populated window object so it takes time
- In nodejs the variable I is inside the module scope so it runs fast

## XSS Attack




