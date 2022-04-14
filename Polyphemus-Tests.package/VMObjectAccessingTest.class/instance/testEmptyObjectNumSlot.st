tests
testEmptyObjectNumSlot
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 0).
	self assert: oop numSlots equals: 0.