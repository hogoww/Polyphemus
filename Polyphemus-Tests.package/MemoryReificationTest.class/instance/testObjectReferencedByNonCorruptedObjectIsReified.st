tests
testObjectReferencedByNonCorruptedObjectIsReified

	| corruptedObject referencedObject referencerObject |
	"Creation order matter, pay attention"
	referencerObject := self newOldSpaceObjectWithSlots: 1.
	corruptedObject := self newOldSpaceObjectWithSlots: 1.
	referencedObject := self newOldSpaceObjectWithSlots: 0.
	memory storePointer: 0 ofObject: referencerObject withValue: referencedObject .
	"Doing manual corruptionof header"
	memory longAt: corruptedObject put:0.
	
	reifiedMemory := ReifiedMemory on: memory.
	
	self assert: (reifiedMemory objectAt: referencedObject) address equals: referencedObject.
	
	