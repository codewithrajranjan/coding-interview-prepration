# Polymorphism

- Polymorphism is the most vital concept of object oriented programming
- When same entity can behave in different ways based on the condition then it is called polymorphism
- When a single function acts in different way then that is called polymorphism
- Runtime polymorphism can be achieved through super class or Interface
- Runtime polymorphism can be achieved using Interface


## What are different types of polymorphism

There are two types of polymorphism 

- Compile time polymorphism
- Run time  polymorphism



## Compile Time Polymorphism

- In compile time polymorphism different behaviour of same method is assigned during compile time 
- Method overloading is the best example of compile time polymorphism

```java

    class JSONObject {
        public void put(String key, String value){
            // implementation
        }
        public void put(String key, int value){
            // implementation
        }
        public void put(String key, Object value){
            // implementation
        }
    }

    JSONObject obj = new JSONObject();
    obj.put("key1","hello");
    obj.put("key1",1);
    obj.put("key", new Person());

```

- In above example if we create a JSONObject then we can put data inside JSONObject using **put** method but the **put** behaves differently based on the argument type that is passed
- so the same **put** function is behaving differently based on argument
- This is compile time polymorphism because during compilation time the object knows that which function will be called


## Runtime Polymorphism

- In runtime polymorphism the object will decide how to behave during runtime
- Example 1 : Database scenario

```java 

    // Database is an abstract since we can't create objects of Database class
    abstract class Database {
        public abstract void create();
    }

    class MongoDB extends Database{
        public void create(){
            // code to handle the insertion in mongodb database
        }
    }

    class MySQLDB extends Database{
        public void create(){
            // code to handle the insertion in mysql database
        }
    }

    class VoltDB extends Database{
        public void create(){
            // code to handle the insertion in VoltDB database
        }
    }


    // now we can create the objects like this 

    Database db1 = new MongoDB();
    Database db2 = new MySQLDB();
    Database db3 = new VoltDB();

    db1.create(); // this will call the create function of mongodb
    db2.create(); // this will call the create function of mysql
    db3.create(); // this will call the create function of VoltDB


```

- Example 2 : Payment system

```java

    // abstract class for payment
    public abstract class Payment(){
        public abstract void pay();
    }

    public class CashPayment extends Payment{
        public void pay(){
            // cash payment implementation
        }
    }

    public class OnlinePayment extends Payment{
        public void pay(){
            // online payment implementation
        }
    }

    public class WalletPayment extends Payment{
        public void pay(){
            // wallet payment implementation
        }
    }


    // now we can create objects like this
    Payemnt p1 = new CashPayemnt();
    Payemnt p2 = new OnlinePayemnt();
    Payemnt p3 = new WalletPayemnt();

    p1.pay(); // call the cash payment pay method
    p2.pay(); // call the online payemnt pay method
    p3.pay(); // call the wallet payment pay method

```

- Example 3 : Geometry - Same way we can create the draw method of shape to behave differently base on the type of shape

- Example 4 : Animals - Same way we can create the sound method of animals to behave differently based on the type of animal




## Why polymorphism is important

- suppose we have created a database library that which exposes a single method let's says as insert
- Now this insert method accepts an object which will be inserted in the database
- so what will be the type of this object that the insert function will accept
- Let's say we have different entities in our application like
    - Animal which has subclasses as Tiger, Lion, Rat 
    - Person which has subclasses as Student, Teacher and Staff
- Now we can create any entity in our database like either any Animal type or any person type. so what will be the type which we will use in insert function Animal or Person
- In this scenario we will create a Interface as DatabaseEntity which both the super class will implement so now in the entire application any object will be of the type DatabaseEntity and this will be datatype of parameter inside the insert function

```java

    // Interface
    Interface DatabaseEntity{

    }

    // Animal class hierarchy
    class abstract Animal{

    }

    class Lion extends Animal {

    }
    class Dog extends Animal{

    }

    // Persom class hierarchy
    class abstract Person{

    }
    
    class Student extends Person{

    }

    class Teacher extends Person{

    }



    // now our databae class will be like

    class Database {

        public void insert(DatabaseEntity data){
            // actual database insertion code here
        }
    }

    // now we can write the code as 


    DatabaseEntity a = new Lion();
    DatabaseEntity b = new Teacher();

    // then we can insert the code as 
    Database db = new Database();
    db.insert(a);
    db.inert(b);

```

- so you can see the power of polymorphism
- during runtime the actual type of the object will be determined like is it Lion or Teacher and then insertion will be done

