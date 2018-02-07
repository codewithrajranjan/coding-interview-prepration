## An important observation in binary numbers

- 2 ^ 0  = 0000 0001
- 2 ^ 1  = 0000 0010
- 2 ^ 2  = 0000 0100
- 2 ^ 3  = 0000 1000
- 2 ^ 4  = 0001 0000
- 2 ^ 5  = 0010 0000
- 2 ^ 6  = 0100 0000
- 2 ^ 7  = 1000 0000

and so on 
from above observation we can say that when we take power of 2 then the corresponding power plus 1 bit is set

so this comes in handy when we need to get the mask of a particular bit


## How to check if a particular bit in a number is set or not

If we take a bit wise and of the number with the mask of that bit then if the result is 0 then the bit is not set and if the result is 1 then it means that the bit is set
For example we take if fifth bit is set or not then we tak number & 00010000 and if the result is 1 then it means that the bit is set otherwise it is not set


## Find the binary representation of a number

### Method 1:
This is the most general method that we have learnt in our school or colleges where we divide the number by 2 and then print the remainder at each stage
This can be implemented using recursion.

``` java

    findBinary(number){
        // take the base case
        if(number == 0){
            return 
        }
        System.out.println(number%2);
        number = number/2;

    }

    // note here finallyw we need to print the output in reverse order

```

### Method2 : Masking and Right shift

- we take mask as 1 which in binary can be represented as 00000001
- now we do a bit wise and operation of the number with the above mask and print the result 
- and then we right shift the number by one until the number is not equal to zero




##  What happens if we subtract the given number with 1

when we subtract the given number with 1 the all the number in the binary representation of that number gets toggled

## Learn about Brain Kernighan's Algorithm













