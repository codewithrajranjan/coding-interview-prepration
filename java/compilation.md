## What happens when a java file is compiled

When a java file is compiled then the java compiler(javac) converts the high level code to bytecode. This bytecode is then run inside the JVM(Java Virtual Machine)

During the compilation process so many things happen
- The compiler checks if the current class under compiler extends some other class or not. If the class doesn't extend any other class then it will add code such that the current class extends the java.lang.Object class
- Constructor Cases : 
    - If the class doesn't contain any constructor then compiler will put a default consturctor. The access modifier of this constructor is same as the class itself. There will be no argument in the default consturctor. Inside the constructor the complier will call the super() method
    - If the programmer has written a constructor then compiler will check if the programmer has written super as the first line in the constructor. If the super or this method is missing then compiler will add super() or this() method
- If inside the class programmer is using the instance variable without prefixing it with this then compiler will prefix all the instance variable with this

