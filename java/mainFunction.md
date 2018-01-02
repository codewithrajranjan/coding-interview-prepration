### What is the signature of main method

```java
    
    public static void main(String[] args){
    

    }

```
### Why main function is declared as public static void

* public - main function needs to be accessed from outside the class so it needs to be declared as public. JVM is the entity that call the main method from outside.
* static - main function can be called without creating an object of the class so it needs to be specified as a static method as static methods are class methods which can be called without creating an object of that class. JVM call the main method by calling it on the class 
* void - since main function is the first function that is called so there is no need to return any thing from it

### Is it possible to change the name of main method to some other name

* main name is configured inside JVM. JVM searches for main method to be called when program runs. If you can change the name of method inside JVM then the above scenario is possible.

