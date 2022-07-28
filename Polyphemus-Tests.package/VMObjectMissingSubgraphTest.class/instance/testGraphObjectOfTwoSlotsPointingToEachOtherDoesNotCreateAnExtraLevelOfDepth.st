tests
testGraphObjectOfTwoSlotsPointingToEachOtherDoesNotCreateAnExtraLevelOfDepth
	| oop firstSlot secondSlot res |
	oop := self reifyOop: (self newObjectWithSlots: 2).
	firstSlot := self reifyOop: (self newObjectWithSlots: 1).
	secondSlot := self reifyOop: (self newObjectWithSlots: 1).
	
	oop slotAt: 1 put: firstSlot.
	oop slotAt: 2 put: secondSlot.
	firstSlot slotAt: 1 put: secondSlot.
	secondSlot slotAt: 1 put: firstSlot. 
	
	res := OOPObjectMissingSubgraphVisitor new
		baseAddress: memory newSpaceStart - memory wordSize;
		toIgnore: { secondSlot };
		rootObject: oop;
		compute.
		
	self assert: res size equals: 2.
	self assert: (res flatCollect: [ :o | o ])  size equals: 2.