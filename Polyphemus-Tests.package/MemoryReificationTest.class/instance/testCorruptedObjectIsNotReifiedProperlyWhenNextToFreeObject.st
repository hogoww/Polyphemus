tests
testCorruptedObjectIsNotReifiedProperlyWhenNextToFreeObject

	| lastOop |
	
	"This test should be remove as soon as OOPAnormalEntity are done with freeObjects"
	
	lastOop := self newOldSpaceObjectWithSlots: 0.

	self corrupt: lastOop.

	reifiedMemory := FullyReifiedMemory on: memory.
	
	self assert: (reifiedMemory objectAt: lastOop) class equals: OOPAbnormalEntity.