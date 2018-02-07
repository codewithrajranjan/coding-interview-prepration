# Interface

## Important points

- Whenever any class implements an interface then it has to define all the methods present inside the interface
- If the class that is implementing an interface does not define all the methods present in interface then we need to make the class abstract.
- every interface method is always public and abstract. Hence when we are implementing the interface method then we need to make it public otherwise it will give compile time error.
- A class can implement any number of interface at a time.

```java
    // This is correct
    class A implements B,C{

    }

```

## What is an Interface

- Any service requirement specification can be called as an Interface.
  - JDBC acts as a service requirement specification for other vendors for developing database drivers.
    - Oracle, MySQL, PostgreSQL uses the JDBC specification for developing the drivers.
  - Servlet API acts as the requirement specification to develop webserver. Servlet API is defined by the SUN people.
    - Apache Tomcat(Apache), WebLogic Sphere(Oracle), WebSphere(IBM) use the servlet API to develop web server.

- From client point of view an Interface is the set of services which the client will get and from service provider point of view Interface defines the set of services which he is offering. Hence the contract between client and provider is also considered as Interface.
    - If we take an ATM machine then user gets certain services from the ATM machine like
      - Withdraw balance
      - check balance
      - change PIN

- 100% Abstract class is an Interface

## Why Interface is 100% pure Abstract class

- Inside an interface all the methods are abstract by default even if we declare that or not

## Is there any case when the class that is implementing an interface doesn't need to define all the methods present in the interface

- yes, if the class that is implementing an interface is an abstract class then we need not to define all the methods present inside the interface
- the next level of child is responsible for implementing other methods


## Interface implementation

```java

    Interface iterf{
        void m1();   // note both the method is by default abstract and public
        void m2();
    }

    // since the class is abstract so we can define only one method of the interface
    abstract class Person implements interf{
        public void m1();
    }

```


## Interface methods

- Any method inside interface is always public and abstract even if we are declaring that or not.
  - Public : Methods are always public because other class in same package or different package will implement it
  - Abstract : Methods are always abstract because implementation class will provide the definition of the method.

  ```java

    // All are correct because by default the method is public and abstract
    Interface interf{
        void m1();
        public void m2();
        abstract m3();
        public abstract m4();
    }

  ```
- As every method is always public so we can have the following access modifier for interface methods
  - Private
  - Protected

- As every method is always abstract so we can have following method in interface
  - static
  - final
  - synchronized
  - strictfp
  - native


## What is the need of having variables in Interface

- The main purpose of interface variable is to have requirement level constants



## Interface variable

- Every interface variable is public static final
  - Public : Interface variable is public so that it is visible to other classes in same of different package
  - Static : Since we can't create an object of the interface so the variable needs to be static so that it can be used
  - Final : As the interface is implemented by multiple classes so there may be a case if the variable is not final then if we change the value of variable in any class then other classes will get the modified value which can create problem. so to make a constant value we have to make the interface variable as final

  ```java
    
    // All are correct
    Interface interf{

        int x = 10;
        public int x = 10;
        static int x = 10;
        final int x = 10;
        public int x = 0;
        static final int x = 0;
        public static final int x = 0;
        ...
    }

  ```
- Interface variable can be private or protected
- Every interface variable is always public static final so we can't declare following types
  - private
  - protected
  - transient
  - volatile

- 















