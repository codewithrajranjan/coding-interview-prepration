# Callback

- the first argument of any callback function is an error object. This is a pattern followed by the nodejs core modules and also the community



## What is callback hell

If a business logic has the requirement of calling different asynchronous function functions then that needs the use of multiple callback functions.
When we use multiple callback function then the readability of our code decreases and due to nested callback the code tends to shift to the right of the screen
This is called callback hell

## How to avoid callback hell

- Modularization : In modularization the callback functions are broken down into independent functions which can be called with some parameters
- use of promise instead of callback
- use of generators instead of promise