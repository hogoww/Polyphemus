test
testIsOldOop
	| oop |
	oop := self reifyOop: (self newOldSpaceObjectWithSlots: 1).

	self assert: oop isOldOop.