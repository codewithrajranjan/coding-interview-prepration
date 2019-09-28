* which are like spies but completely replace the function.
* this helps us to create a sutbbed function and we can do whatever we like - throw an exception, return specific value.
* stubs have all the features of a spies and it completely replaces the function on which we attach a stub
* since it replaces the function completely so it has number of advantages.
	** Replacing Ajax or external calls that make test slow and difficult to write
	** Triggering different code paths depending upon code output
	** Testing unusual conditions for example what happens when an exception is thrown
