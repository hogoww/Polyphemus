tests
testBuildBasicClassObject

	| reifiedOop anotherOop  |
	oopBuilder := OOPBuilder forMemory: memory.

	oopBuilder oopIsClass: true.
	
	reifiedOop := self buildObject.
	anotherOop := self buildObject.
	
	reifiedOop becomeOppForward: anotherOop.
	
	reifiedMemory snapshotMemory.
	self assert: anotherOop address equals: (reifiedMemory reifiedClassTable classAtIndex: reifiedOop oopClassIndex)