tests
testNumberOfImmediates
	| initialImmediatesCounts object |
	initialImmediatesCounts := reifiedMemory numberOfImmediates.
	
	object := self reifyOop: (self newObjectWithSlots: 1).
	object slotAt: 1 put: (memory integerObjectOf: 42).
	reifiedMemory update.
	
	self assert: reifiedMemory numberOfImmediates equals: initialImmediatesCounts + 1