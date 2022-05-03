tests
testClassTagForForwarder
	| oop |
	oop := self reifyOop: self newZeroSizedObject.
	oop pinObjectOop.
	self assert: oop oopClassTag equals: memory isForwardedObjectClassIndexPun