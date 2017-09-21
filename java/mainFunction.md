## Why main function is declared as public static void

* public - main function needs to be accessed from outside the class so it needs to be declared as public.
* static - main function can be called without creating an object of the class so it needs to be specified as a static method as static methods are class methods which can be called without creating an object of that class
* void - since main function is the first function that is called so there is no need to return any thing from it
