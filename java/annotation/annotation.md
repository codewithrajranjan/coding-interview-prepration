# Java Annotation
Java annotations are typically used for the following purposes:
* Compiler instructions
* Build-time instructions
* Runtime instructions
Java has 3 built-in annotations that you can use to give instructions to the Java compiler. These annotations are explained in more detail later in this text.

Java annotations can be be used at build-time, when you build your software project. The build process includes generating source code, compiling the source, generating XML files (e.g. deployment descriptors), packaging the compiled code and files into a JAR file etc. Building the software is typically done by an automatic build tool like Apache Ant or Apache Maven. Build tools may scan your Java code for specific annotations and generate source code or other files based on these annotations.

Normally, Java annotations are not present in your Java code after compilation. It is possible, however, to define your own annotations that are available at runtime. These annotations can then be accessed via Java Reflection, and used to give instructions to your program, or some third party API.
