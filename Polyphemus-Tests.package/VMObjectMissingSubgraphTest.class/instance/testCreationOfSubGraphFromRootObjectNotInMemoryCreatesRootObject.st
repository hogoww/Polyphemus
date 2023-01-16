tests
testCreationOfSubGraphFromRootObjectNotInMemoryCreatesRootObject
	| oop res initialSize |
	initialSize := reifiedMemory objects size.
	oop := self reifyOop: (self newObjectWithSlots: 0).
	
	res := OOPObjectMissingSubgraphVisitor new
		memory: reifiedMemory;
		rootObject: oop;
		compute.
	reifiedMemory createCompressedVersion.
	
	self assert: (reifiedMemory objectAt: oop address) equals: oop.
