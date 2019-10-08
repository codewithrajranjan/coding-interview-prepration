> ## SOLID Principle

This is given by Robert C Martin


- S : Single Responsibility Principle
    - A class should have one and only one reason to change
    - It should have only one reponsibility to handle 
- O : Open Closed Principle
    - Objects or entities should be open for extension but closed for modification
    - This is solved by the Polymorphism principle. 
    - Lets take the example of doing a payment
        - we can write a Payment class and by using if else statements we handle that which type of payment needs to be done like credit, debit, cash, walled
            - But in this approach whenever we need to add a new payment then we have to modify the Payment class by adding new if else statement
        - Another way is to create an abstract super class say payment and then concrete class like CreditPayment, DebitPayment, WalletPayment will inherit from the Payment class. 
            - If you want to add new Payment in future then you only need to create a new child class for Payment super clas. This is the case of extension and not modification

- L : Liskov substitution Principle
    - If S is subtype of T then objects of Type T can be replaced with object of type S
- I : Interface Inversion Principle
    - A client should never be forced to implement an interface that it doesn't use or clients shouldn't be forced to depend on methods they do not use
    - If you create an interface Say ShapeInterface with method like Area and Volume
    - Then you implement this interface on rectangle and cylinder
    - But you can guess that even though rectangle has no volume because it is 2D shape but we have to implement the volume method.
    - To avoid this we need to create multiple interface like TwoDimensionalShapeInterface with only area method and ThreeDimensionalShapeInterface with volume method
    - Now rectangle will implement only TwoDimensionalShapeInterface and cylinder will implement both interface TwoDimensionalShapeInterface and ThreeDimensionalShapeInterface

- D : Dependency Inversion Principle
    - Entities must depend on abstractions not on concretions.
    - It state that the high level module must not depend on the low level module but they should depend on abastractions
