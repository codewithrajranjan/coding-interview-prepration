# Inheritance

## Important points

- A class can extend only one class at a time

```java

    // This is wrong
    class A extends B,C {

    }

    -----
    // This is correct
    class B{

    }
    class B extends C{

    }
    class A extends B{

    }

```