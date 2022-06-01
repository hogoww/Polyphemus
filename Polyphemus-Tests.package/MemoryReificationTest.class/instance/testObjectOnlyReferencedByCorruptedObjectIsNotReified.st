tests
testObjectOnlyReferencedByCorruptedObjectIsNotReified

	| corruptedObject referencedObject |
	corruptedObject := self newOldSpaceObjectWithSlots: 1.
	referencedObject := self newOldSpaceObjectWithSlots: 0.
	memory storePointer: 0 ofObject: corruptedObject withValue: referencedObject .
	"Doing manual corruptionof header"
	memory longAt: corruptedObject put:0.
	
	reifiedMemory := ReifiedMemory on: memory.
	
	self assert: (reifiedMemory objectAt: referencedObject) equals: nil.
	
	