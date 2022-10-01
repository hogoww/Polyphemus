build
initializeClassOop: anOop
 
	memory storePointer: 0 ofObject: anOop withValue: (memory classAtIndex: self indexOfClass).
	memory storePointer: 1 ofObject: anOop withValue: (self class forMemory: memory) buildObject.
	memory storePointer: 2 ofObject: anOop withValue: (memory integerValueOf: 42).
	memory ensureBehaviorHash: anOop