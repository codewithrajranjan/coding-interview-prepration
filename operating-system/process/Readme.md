# Process

- when you run a program then a structure is created in main memory that entity is called process
- when a process has lot of CPU time to be performed then that CPU is called CPU bound process
- when a process has lot of I/O time to be performed then that process is called I/O bound process

## Structure of a process

- A process contains following parts
  - executable code : This is the actual code that programmer has written which he is trying to run
  - static variable and global variable : These are the static and global variable that programmer has written in the program
  - heap : This is the part of RAM which process uses. Heap grows upward
  - stack : A stack data structure which process used to keep track of function call and local variables. Stack grows downwards

## Process Control Block

- This is the process data structure which holds data of all the attributes of the processor
- Every process has its own process control block

## Attributes of a process

- Process Id : unique id for each process which is assigned by the operating system
- Program Counter
- Process State : holds the state of the process like running, waiting, ready etc.
- Priority : Each process has a priority which gives importance of one process over another
- General Purpose Register : When CPU does context switch then the general purpose register holds the data of the state of CPU registers 
- List of open files : A process keeps track of the list of open files
- List of open devices : list of all the devices which the process is using
- Protection


## States of the process

A process can exist in different state based on the work it is doing or based on the operating system scheduler. The pre-emptive  scheduler algorithm can change the state of process for efficient performance of operation system

If the process wants to perform IO task then that process will be removed from CPU and its state will be changed 

The different states of process are 

- New 
  - Location : secondary memory
- Ready
  - Location : RAM
- Run 
  - Location : CPU
- Block/Wait 
  - Location : RAM
  - In this situation the process can be performing an I/O operation
- Termination/Completion
  - Process will be killed and every trace for process will be deleted
- Suspend ready
  - Location : Secondary Memory
  - when the main memory is full and a high priority process comes then the scheduler will move some low priority process to suspend ready state
- Suspend wait or Suspend block


## What happens if a high priority process comes

- If the current running process is not I/O bound then the process will be moved to the ready state from running state
- Note: since the process is not I/O bound so it is not moved to waiting state


## What happens if the running process wants to perform I/O operation 

- As soon as the OS sees that a particular process wants to perform I/O operation then OS moves that process to wait state or block state
