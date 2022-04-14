test
testIsOldOop
	| oop |
	oop := self objectForOop: (self newOldSpaceObjectWithSlots: 1).

	self assert: oop isOldOop.