> ## Threads

- Threads allows us to enable multiple flows of control simultaneously
- Threads are main construt of parallelism
- Unlike process thread share the same address space though. This means inside a single process if it has multiple thread then they can access the same address space inside a process. They can access the same variable of the program or same method of the program
- This can create problem because if same variable is being modified by multiple thread then that can cause inconsisitent state of the system




> ## Sequential Execution




> ## Mutable State




> ## Shared State



> ## Race Condition

- A race condition occurs when two or more threads compete for access to critical section
- A race condition may result in various inconsistent states 
  - A thread may read stale data while another thread is already updating it
  - when multiple thread alter the state at same time either one of the changes may last and others get lost 
- so we need mechanism to guard critical sections and enforce synchronized access

> ## Locking Mechanism



> ## Different Types of locks

- Semaphores
  - simple lock that provide a wait and a signal function
  - Before entering a crititcal section or using a shared resource, wait function must be called
  - once the critical section has been traversed it is freed using a signal
  - The semaphore prevents multiple threads from acquiring the semaphore at the same time by blocking other contenders in the wait call.

> ## Consequence of Locking

- Improper locking can break the application, when obtained locks are not released or locks to acquire never become available



> ## Deadlock

- two or more threads compete for lock with cyclic dependencies
- In the simplest scenario, two threads both own a separate lock, but additionally need to acquire the lock of the other thread. As no thread can advance without acquiring a second lock, both threads are blocked and cannot continue.


> ## LiveLock


> ## Lock Starvations





















