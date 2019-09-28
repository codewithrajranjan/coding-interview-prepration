* when we try to access an instance varible and it doesn't exits on the instance then it will try to search on the static varibles.

class Employee:



then if we create an object through it 

emp1 = Employee()


print(emp.__dict__)  // this will give details about the object

print(Employee.__dict__) // this will give deatils about the class

