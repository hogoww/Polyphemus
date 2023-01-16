tests
testCreationOfSubGraphFromRootObjectNotInMemoryCreatesRootChild
	| oop res initialSize slot |
	initialSize := reifiedMemory objects size.
	oop := self reifyOop: (self newObjectWithSlots: 1).
	slot := self reifyOop: (self newObjectWithSlots: 0).
	
	oop slotAt: 1 put: slot.
	
	res := OOPObjectMissingSubgraphVisitor new
		memory: reifiedMemory;
		rootObject: oop;
		compute.
	reifiedMemory createCompressedVersion.
	
	self assert: (reifiedMemory objectAt: slot address) equals: slot.
