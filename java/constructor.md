- if there is no constructor in the class then compiler will add a default constructor during the compilation process and only super() will be written inside that. The default constructor will have no arguments
- default constructor is added by the compiler and not by the JVM
- If a method has same name as that of the class with a return type then that method will not be evaluated as the constructor

```java

    class Test {
        // note this is not a constructor as this method has a return type
        public void Test{

        }
    }

```

- a class can containt method name same as that of the class
- when compiler compiles your code and if you have not written super() or this() inside the constructor then compiler will add that by default