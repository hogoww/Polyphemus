tests
testCorruptedObjectIsNotReified

	| lastOop |
	lastOop := self newOldSpaceObjectWithSlots: 0.
	
	"Doing manual corruptionof header"
	memory longAt: lastOop put:0.
	
	reifiedMemory := ReifiedMemory on: memory.
	
	self assert: (reifiedMemory objectAt: lastOop) equals: nil.
	self deny: lastOop equals: reifiedMemory lastKnownObject address
	
	