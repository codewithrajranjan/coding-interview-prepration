
```java

    // defining a stack
    Stack<Integer> s = new Stack<Integer>();



    // size of stack


   //Checking is stack empty
   s.empty(); // returns a boolean value 

```


## Infix expression
This is the general way of representation of arithimetic operation that we human can understand. 

- In this operator is in between the two operands


## Postfix expression
This is the one way of representation which computer or compilers can understand easily

- operator comes after the two operand


## Prefix expression
This is the one of the way of representation which computer or compiler can undertand easily

- operator comes before the two operand




## Infix to postfix conversion
- we take a stack and an array
- scan the infix from left to right
- if the item is an operator then pop all the operator from stack and push to array that has high or equal precedence and push item to stack
- if the item is ) then pop item from stack and push to array until we get (
- if the item is ( then push to stack
- else push to array
- at last push all the items from stack until it's empty



## Evalution of postfix operation

- scan the post fix operation from left to right
- if the item is operand then push that to the stack
- if the item is operator then pop out two element from the stack and perform operation and then push back.
- note the second popped out element will be the first
- finally pop out the value from stack which is the answer.











