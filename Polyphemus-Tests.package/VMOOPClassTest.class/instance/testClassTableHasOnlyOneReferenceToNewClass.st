tests
testClassTableHasOnlyOneReferenceToNewClass

	| reifiedOop anotherOop oldIndex |
	oopBuilder := OOPBuilder forMemory: memory.

	oopBuilder oopIsClass: true.
	
	reifiedOop := self buildObject.
	anotherOop := self buildObject.
	
	oldIndex := anotherOop oopClassIndex.
	
	reifiedOop becomeOppForward: anotherOop.
	reifiedMemory snapshotMemory.
	
	self assert: (reifiedMemory reifiedClassTable allClassesOop count: [ :e | e = anotherOop]) equals: 1.
	self assert: (self reifyOop: (reifiedMemory reifiedClassTable classAtIndex: oldIndex)) isNilOop 