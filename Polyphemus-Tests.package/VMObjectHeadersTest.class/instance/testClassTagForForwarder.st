tests
testClassTagForForwarder
	| oop |
	oop := self objectForOop: self newZeroSizedObject.
	oop pinObjectOop.
	self assert: oop classTag equals: memory isForwardedObjectClassIndexPun