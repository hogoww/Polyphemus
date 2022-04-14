tests
testHeaderForRegularObject
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 0).
	self assert: oop objectHeader equals: 33554448