# Arrow functions

- Arrow function are suitable when we are dealing with non-method functions
  - non-method function are independent function which is not a part of any object
- In arrow function the old style of writing the function is separated by an arrow =>
- Left side of the arrow contains the parameters of functions
- Right side of the arrow contains the body of the function

```javascript

    // traditional style of writing function
    function add(number1,number2){
        return number1 + number2;
    }

    // arrow style 
    // left side is the parameter
    // right side is the body of function
    var add = (number1,number2) => {return number1 + number2}


```

## Cases on parameter

- If there is only one parameter then we can omit the parenthesis of the input parameters

```javascript 

    // since there is only one parameter so we can omit the paranthesis
    var printLine = param1 => { console.log(param1) }

```

- If the number of parameter is more than one then it is mandatory to write parenthesis with the parameters
- If there is no parameter then also it is mandatory to write the parenthesis on the left hand of the arrow

```javascript 

    // since there is no parameter so paranthesis is needed
    var test  = ()  => { statements }

```


## Cases on body of the function

- If there is only single line of statement then you need not to write the parenthesis in the body
  - In this case the evaluation of the single line is the return from the function

```javascript

    // since there is single line of evalution so we have omitted the parenthesis in the body
    // reutrn statement will be equal to number1+number2
    var add = (number1,number2) => number1 + number2;

```

- If you need to have multiple statements in you function body then you need to provide the parenthesis
  - you have to explicitly write the return statement
  - If no return statement has been provided then undefined will be returned

```javascript

    // if body contains multiline statements then we need to provide parenthesis
    // since no return statement is there so undefined will be returned
    var add = (number1,number2) => { 
        if(number1 < number2){
            // do some logic
        }
        number1 + number2;
    };

    // we have provided a return statement so sum of both the numbers will be returned
    var add = (number1,number2) => { 
        if(number1 < number2){
            // do some logic
        }
        return number1 + number2;
    };

```


## Understanding this in arrow function

- generally arrow function are used in non-method functions
- If we define a non method function then it has its own value of this
- user arrow function the value of this is equal to the lexical scope





