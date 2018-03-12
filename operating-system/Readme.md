# OS

## Multiprogramming

Multiprogramming is the concept in which OS can handle multiple task at a time

This can be done in different ways

- Non pre-emptive :
  - In this case power lies in the hand of each process to remove itself from CPU
  - Each process will yield and then OS will remove the process from CPU
  - This can lead to serious error like error in an individual process can cause the whole OS o crash

- Pre-emptive :
  - In this case OS has the power to remove a process from CPU
  - OS will forcefully remove the process from CPU if needed