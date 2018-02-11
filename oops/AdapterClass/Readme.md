# Adapter class

- The adapter is one the ways in which programming is done. It's a way which can simplify programming.
- Adapter class is a simple java class that implements an interface with only empty implementation. Note the adapter class need not to be abstract
- Suppose an interface has 100 methods and if some concrete class want to implement only one method of interface then it is not possible because the concrete class must implement all the the interface methods which it is implementing. This causes code readability  and code duplication

```java
    interface interf{
        public void m1();
        public void m2();
        public void m3();
        ...
        ...
        ...
        public void m100();
    }

    // concrete class only wants to implemtnt m3 method. but it is not possible as concrete class had to implement all 100 methods with empty defination

    class Test implements interf {

        // implementing the code for m3
        public void m3(){
            // some logic here
        }

        // but we have to implement the other 99 methods also. this is not appropriate way of coding
        public void m1(){
        }
        public void m2(){

        }
        public void m4(){

        }
        ...
        ...
        ...
        public void m100(){

        }
    }

```

- For solving above problem we will create an adapter class. 
- An adapter class is a simple class that implements an interface and provide empty definitions
- Then the concreate class can extends this adapter class and need to implement only those methods which it wants.

```java

    interface interf{
        public void m1();
        public void m2();
        public void m3();
        ...
        ...
        ...
        public void m100();
    }

    // Adapter class provide empty implementation
    class Adapter implements interf{
        public void m1(){
        }
        public void m2(){

        }
        public void m3(){

        }
        ...
        ...
        ...
        public void m100(){

        }
    }

    // class Sample1 only provide definition for m1 and m2
    public class Sample1 extends Adapter{

        public void m1{
            // logic here
        }
        public void m2{
            // logic here
        }
    }

    // class Sample2 only provide definition for m10 and m20
    public class Sample1 extends Adapter{

        public void m10{
            // logic here
        }
        public void m20{
            // logic here
        }
    }

```

## Example from java

we can develop a servlet in following three ways

- By implementing servlet interface
- By extending Generic servlet Abstract class
- By extending HttpServlet Abstract class.


- If we implement servlet interface then need to provide the implementation for each and every method present in servlet interface. This increases code length and reduces readability.
- If we extend to the the Generic servlet Abstract class then we need to provide implementation of only required methods