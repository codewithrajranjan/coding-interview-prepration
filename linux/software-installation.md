### How to install software in Linux using source files

Generally you can download the source code of any Linux software as a tar ball and then you can install it.
The steps involved in installing any Linux software are

1. Configure -- The configure steps checks your system for all the dependencies needed to compile the software. If any dependencies is not available then it will throw an error. If the configure step is successfully executed then it means that your software will successfully compile

```bash

    cd softwareToInstall
    ./configure

```
2. Make -- Make step compile the source code using the compiler. In case of C language the compiler used can be gcc. This steps compiles the source code and puts them inside the current folder

```bash

    make

```

3. Make Install - When source code is successfully compiled using the make command then the compiled files needs to be put in system PATH so that it can executed. Generally these path are /usr/local or /usr/bin or /usr/local/bin etc. 

```bash


    make install

```
