tests
testEmptyObjectNumSlot
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 0).
	self assert: oop numSlots equals: 0.