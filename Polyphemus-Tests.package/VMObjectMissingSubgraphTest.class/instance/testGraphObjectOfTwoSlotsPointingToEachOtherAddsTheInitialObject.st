tests
testGraphObjectOfTwoSlotsPointingToEachOtherAddsTheInitialObject
	| oop firstSlot secondSlot res initialSize |
	initialSize := reifiedMemory objects size.
	oop := self reifyOop: (self newObjectWithSlots: 2).
	firstSlot := self reifyOop: (self newObjectWithSlots: 1).
	secondSlot := self reifyOop: (self newObjectWithSlots: 1).
	
	oop slotAt: 1 put: firstSlot.
	oop slotAt: 2 put: secondSlot.
	firstSlot slotAt: 1 put: secondSlot.
	secondSlot slotAt: 1 put: firstSlot. 

	res := OOPObjectMissingSubgraphVisitor new
		baseAddress: memory newSpaceStart - memory wordSize;
		memory: reifiedMemory;
		rootObject: oop;
		compute.
	reifiedMemory createCompressedVersion.
	
	self assert: (reifiedMemory objectAt: oop address) equals: oop.