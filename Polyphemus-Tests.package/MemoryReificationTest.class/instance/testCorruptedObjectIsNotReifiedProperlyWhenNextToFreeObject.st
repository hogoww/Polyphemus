tests
testCorruptedObjectIsNotReifiedProperlyWhenNextToFreeObject

	| lastOop |
	
	"This test should be remove as soon as OOPAnormalEntity are done with freeObjects"
	
	lastOop := self newOldSpaceObjectWithSlots: 0.

	self corrupt: lastOop.

	reifiedMemory := ReifiedMemory on: memory.
	
	self assert: (reifiedMemory objectAt: lastOop) equals: nil.
	self deny: lastOop equals: reifiedMemory lastKnownObject address