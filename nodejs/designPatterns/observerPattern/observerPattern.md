* another name for this pattern is Pub/Sub pattern for Publication and Subscriptions
* defines one to many dependency between objects so that when one object changes all its dependents are notified and updated automatically
* in this the objects subscribe to an event and when that event occurs then that object is notified


# Participats in this pattern

* Subject
	* this maintains the list of observers
	* any number of observer can subscribe to the subject 
	* sends notifications to its subscribers when the state changes.
* Observers
	* has the function signature that can be invoked when Subject changes.
