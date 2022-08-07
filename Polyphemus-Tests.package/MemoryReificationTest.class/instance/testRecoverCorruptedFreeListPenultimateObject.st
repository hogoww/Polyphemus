tests
testRecoverCorruptedFreeListPenultimateObject
	
	| pinnedObject gcSize garbageObject freeObjects |
	memory fullGC.
	
	garbageObject := self newOldSpaceObjectWithSlots: 1. 
	
	pinnedObject := self newOldSpaceObjectWithSlots: 1.
	memory pinObject: pinnedObject.
	memory storePointer: 0 ofObject: pinnedObject withValue: self keptObjectInVMVariable1.
	self keepObjectInVMVariable1: pinnedObject.
	
	gcSize := memory fullGC.
	
	reifiedMemory := PreReifiedMemory onWithFlagFreeTree: memory.
	
	freeObjects := reifiedMemory select: [:anOop | anOop isFreeOop ].

	self assert: freeObjects size equals: 2.
	
	self assert: freeObjects first oopByteSize equals: (memory totalByteSizeOf: garbageObject).