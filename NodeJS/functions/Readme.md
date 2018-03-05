# Functions

- If no return statements has been provided in the function then by default function will return undefined


## Different roles of function in JavaScript

- Non-Method function
- Constructor function
- Method function


## Non-Method function

- If a function is defined independently then it is called non method function

```javascript

    // this is an independent function
    function add(param1,param2){
        return param1 + param2;
    }

```

## Method function

- when a function is a property of an object so that it can be invoked on that object then that function is called as the method function

```javascript

    // here add function is the property of Calculator object so it is method function
    function Calculator(number1,number2){
        this.number1 = number1;
        this.number2 = number2;

        this.add = function() {
            return this.number1 + this.number2;
        }
    }


```



## Defining a function

There are three ways to define a function

- function expression
- function declaration
- via constructor function



## Function Expression

```javascript

    var add = function (number1, number2){
        return number1 + number2;
    };

```

## Function Declaration

- Function declaration is better than function expression because
  - function declaration supports hoisting
  - function declaration has name so it becomes easy to debug

```javascript

    function add(number1, number2){
        return number1 + number2;
    };

```

## Hoisting of Function

- The mechanism of calling a function before declaring it is called hoisting
- JavaScript supports function hoisting 
- Only function created using function declaration is hoisted
- Function created using function expression is not hoisted

```javascript
    // calling add function before declaring it is fine if the function is a function declartion
    add(1,3);

    function add (number1, number2){
        return number1 + number2;
    };

```


```javascript

    // this will throw error
    // we are calling a function which is creted using function expression so that will not be hoisted
    add(1,5);
    var add = function (number1, number2){
        return number1 + number2;
    };

```

