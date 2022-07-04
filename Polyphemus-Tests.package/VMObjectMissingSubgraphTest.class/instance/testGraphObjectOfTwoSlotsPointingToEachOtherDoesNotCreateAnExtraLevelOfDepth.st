tests
testGraphObjectOfTwoSlotsPointingToEachOtherDoesNotCreateAnExtraLevelOfDepth
	| oop firstSlot secondSlot res toIgnore |
	oop := self reifyOop: (self newObjectWithSlots: 2).
	firstSlot := self reifyOop: (self newObjectWithSlots: 1).
	secondSlot := self reifyOop: (self newObjectWithSlots: 1).
	
	oop slotAt: 1 put: firstSlot.
	oop slotAt: 2 put: secondSlot.
	firstSlot slotAt: 1 put: secondSlot.
	secondSlot slotAt: 1 put: firstSlot. 
	
	toIgnore := OrderedCollection new.
	toIgnore add: secondSlot.
	
	res := OOPObjectMissingSubgraphVisitor new
		toIgnore: toIgnore;
		rootObject: oop;
		compute.
		
	self assert: res size equals: 2.
	self assert: (res flatCollect: [ :o | o ])  size equals: 2.