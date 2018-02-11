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

- If two interface has a method with same signature and same return type then in the implementation class we have to provide implementation for only one method

```java

   interface Left{
     public void m1();
   }

   interface rightK{
     public void m1();
   }

   class Test implements Left, Right{

     // note here the interface left and right both contains same method m1
     @override
     public void m1(){

     }
   }
```

- If two interface contains a method with same name and same return type but with different arguments then implementation class needs to provide implementation for both the methods. This is a case of **Overloaded methods**

```java

   interface Left{
     public void m1();
   }

   interface rightK{
     public void m1(int number);
   }

   class Test implements Left, Right{

     // note even though the mehtodh name is same but implmentation of both the method is provided
     @override
     public void m1(){

     }
     @override
     public void m1(int number){

     }
   }
```

- If two interfaces contains a method with same name but different return type then it is impossible to implement both the interfaces simultaneously

```java

    interface Left{
      public void m1();
    }

    interface Right{
      public int m1();
    }

    // Note this implementation is not correct
    class Test implements Left, Right{

      @override
      public void m1(){

      }
      // Wrong same method can't have same return type
      @override int m1(){

      }

    }

```

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
- Interface variable can't be private or protected
- Every interface variable is always public static final so we can't declare following types
  - private
  - protected
  - transient
  - volatile
- since the interface variable is final and static so we need to initialize it.
  - The initialization of static final variable can be done in static block or during declaration
  - As interface doesn't have a static variable so  we need to initialize it during declaration
- In interface the initialization of variable is mandatory

```java

  interface interf{
    // declaration and initialization
    int x = 10;
  }

```

- Once a variable has been declared in an interface then its value can't be changed
- Two interface can have a variable with same name but when we access that variable in the class then we need to access it by referring the interface name

```java

  interface Left{
    int x = 10;
  }
  interface Right{
    int x = 10;
  }

  class Test implements Left, Right{
    // if we acess the variable with name then it will be wrong
    System.out.println(x); // wrong

    // but we can acess them by their interface name
    Sytem.out.println(Left.x);
    System.out.println(Right.x);
  }

```

## Marker Interface

- If the interface doesn't contain any method and by implementing that interface the class gets some special ability then that interface is called marker interface like serializable, cloneable, random access, single thread model
- Serializable interface : By implementing the serializable interface our objects can be saved to a file and can travel across network
- Cloneable interface : By implementing the cloneable interface our objects gets special ability to produce exactly duplicate objects
- Even if the marker interface doesn't have a method but the objects gets special ability because it the work of JVM to provide the special functionality

## Why JVM is providing the special functionality using marker interface

- Its the responsibility to JVM to provide the special functionality in order to reduce complexity and make java as simple as possible. suppose for serialization process we don't need to bother about how the object is saved on the disk or transferred over the network

## Is it possible to create our own marker interface

Yes it is possible to cerate our own marker interface but for that we need to provide the corresponding implementation in the JVM which means we need to customize the JVM for understanding our own marker interface























