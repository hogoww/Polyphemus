tests
testBecomeReplacesReferences

	| reifiedOop anotherOop referencer |
	oopBuilder := OOPBuilder forMemory: memory.

	oopBuilder oopIsClass: true.
	
	reifiedOop := self buildObject.
	anotherOop := self buildObject.
	
	oopBuilder initialize.
	oopBuilder oopNumberOfSlots: 1.
	referencer := self buildObject.
	
	referencer slotAt: 1 put: reifiedOop.

	reifiedMemory snapshotMemory.
	reifiedOop becomeOppForward: anotherOop.
	reifiedMemory snapshotMemory.
	
	self assert: (referencer slotAt: 1) equals: anotherOop address