tests
testObjectEqualOop
	| object1 object2 |
	object1 := image objectForOop: (image simulator integerObjectOf: 42).
	object2 := image simulator integerObjectOf: 42.
	
	self assert: object1 equals: object2