tests
testObjectWithInstanceVariableHasInstanceVariable

	| objectOop |
	objectOop := self newObjectWithSlots: 2.
	self assert: (image objectForOop: objectOop) instanceVariables isNotEmpty.