tests
testNotEqualsNil
	| object1 object2 |
	object1 := image objectForOop: (image simulator integerObjectOf: 42).
	object2 := image objectForOop: (image simulator nilObject).
	
	self deny: object1 equals: object2