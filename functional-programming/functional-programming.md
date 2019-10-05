> ## Concepts  in functional  programming
- Functional programming focus on results and not on process

- Pure functions
    - Pure function are those functions which
        - They always produce same output for same arguments.
            - since the output is same for same arguments so the compiler can memorize the results and this can help in parallel execution and the program can run fast
        - They don't have any side effects which means that they don't modify the argument or global variable. This is called immutable
    ```bash
        
        sum(x,y){
            return x+y;
        }

    ```

- Recursion
    - There is no for or while loop in functional programming. Iteration in functional languages is implemented through recursion. Recursion function repeatedly call themselves until they reach the base condition or exit condition
- Referential transparency
    - Variable once defined don't change their value throughout the program
    - There are no assignment statement. If we store new values then we define new variable instead
- Functions are First-Class and can be Higher-Order
    - First class functions are treated as first class variables.
    - Functions can be passed as parameters
    - Functions can return functions
- Variables are Immutable
    - once a variable has been initialized then it can't be changed


> ## Disadvantages

- Reduce the readability of the code
- writing code only using recursion and not using loops can be intimidating
- Immutable variable and recursion can lead to decrease in performance


> ## Languages that support functional programming

- Haskell
- JavaScript
- Scala
- Erlang
- Closure
- Lisp



> ## Difference between functional programming and OOPS

- Immutability
    - FP uses Immutable data.
    - OOP uses Mutable data.

- Programming Paradigm
    - FP Follows Declarative Programming based Model.
        - with declaritve progamming your code describes what you want but not necessarily how to get it
        
        ```java
            
            var results = collection.Where( num => num % 2 != 0);

        ```

    - OOP Follows Imperative Programming Model.
        - with imperative programming you want to tell the compiler step by step that what needs to be done

        ```java
            
            // first step create a list
            List<int> collection = new List<int> { 1, 2, 3, 4, 5 };

            // second step create a new list
            List<int> results = new List<int>();

            // step throught each number 
            foreach(var num in collection){
                // check if it is  odd then put it in result
                if (num % 2 != 0){
                        results.Add(num);
                }
            }

        ```
- What it is meant for 
    - What it focuses is on: "What you are doing. in the programme."
    - What it focuses is on "How you are doing your programming."
- Parallelism
    - Supports Parallel Programming.
    - No supports for Parallel Programming.
- Functions
    - Its functions have no-side effects.
    - Method can produce many side effects.
- Looping
    - FP : Flow Control is performed using function calls & function calls with recursion.
    - OOP : Flow control process is conducted using loops and conditional statements.

- Execution Order
    - FP : Execution order of statements is not very important.
    - OOP : Execution order of statements is important.
