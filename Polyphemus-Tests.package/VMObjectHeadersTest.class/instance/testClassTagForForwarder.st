tests
testClassTagForForwarder
	| oop |
	oop := self objectForOop: self newZeroSizedObject.
	oop pinObjectOop.
	self assert: oop oopClassTag equals: memory isForwardedObjectClassIndexPun