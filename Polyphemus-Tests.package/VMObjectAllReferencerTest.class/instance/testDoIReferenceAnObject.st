tests-graphObject
testDoIReferenceAnObject
	
	| oop slot |
	oop := self reifyOop: (self newOldSpaceObjectWithSlots: 1).
	slot := self reifyOop: (self newOldSpaceObjectWithSlots: 0).
	oop slotAt: 1 put: slot.
	self assert: (oop references: slot).