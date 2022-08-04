tests
testCreationOfSubGraphFromObjectNotInMemoryCreatesChild
	| oop slot res initialSize |
	initialSize := reifiedMemory objects size.
	oop := self reifyOop: (self newObjectWithSlots: 1).
	slot := self reifyOop: (self newObjectWithSlots: 1).
	
	oop slotAt: 1 put: slot.

	res := OOPObjectMissingSubgraphVisitor new
		baseAddress: memory newSpaceStart - memory wordSize;
		memory: reifiedMemory;
		rootObject: oop;
		compute.
	reifiedMemory createCompressedVersion.
	
	self assert: (reifiedMemory objectAt: slot address) equals: slot.