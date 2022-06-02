tests
testObjectReferencedByNonCorruptedObjectIsReified

	| corruptedObject referencedObject referencerObject |
	"Creation order matter, pay attention"
	referencerObject := self newOldSpaceObjectWithSlots: 1.
	corruptedObject := self newOldSpaceObjectWithSlots: 1.
	referencedObject := self newOldSpaceObjectWithSlots: 0.
	
	memory
		storePointer: 0
		ofObject: referencerObject
		withValue: referencedObject.

	self corrupt: corruptedObject.

	reifiedMemory := ReifiedMemory on: memory.

	self
		assert: (reifiedMemory objectAt: corruptedObject) class 
		equals: OOPAbnormalEntity