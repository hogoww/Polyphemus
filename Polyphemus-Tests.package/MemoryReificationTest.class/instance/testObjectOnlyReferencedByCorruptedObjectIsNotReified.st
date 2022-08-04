tests
testObjectOnlyReferencedByCorruptedObjectIsNotReified

	| corruptedObject referencedObject |
	corruptedObject := self newOldSpaceObjectWithSlots: 1.
	referencedObject := self newOldSpaceObjectWithSlots: 0.
	memory
		storePointer: 0
		ofObject: corruptedObject
		withValue: referencedObject.

	self corrupt: corruptedObject.

	reifiedMemory := PreReifiedMemory on: memory.

	self assert: (reifiedMemory objectAt: referencedObject) equals: nil