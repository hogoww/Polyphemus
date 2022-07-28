tests
testRecoverObject

	| corruptedObject referencedObject1 referencerObject recoverableObject referencedObject2 abnormalObjects recoveredObject |
	"Creation order matter, pay attention"
	referencerObject := self newOldSpaceObjectWithSlots: 2.
	corruptedObject := self newOldSpaceObjectWithSlots: 1.
	referencedObject1 := self newOldSpaceObjectWithSlots: 0.
	recoverableObject := self newOldSpaceObjectWithSlots: 0.
	referencedObject2 := self newOldSpaceObjectWithSlots: 0.
	
	memory
		storePointer: 0
		ofObject: referencerObject
		withValue: referencedObject1.
		
	memory
		storePointer: 1
		ofObject: referencerObject
		withValue: referencedObject2.
		
	memory
		storePointer: 0
		ofObject: corruptedObject 
		withValue: recoverableObject.

	self corrupt: corruptedObject.

	reifiedMemory := ReifiedMemory on: memory.

	abnormalObjects := reifiedMemory select: [:anObj | anObj isAbnormalOop  ].
	
	self assert: abnormalObjects size equals: 2.
	
	"The second abnormal object is recoverable"
	recoveredObject := abnormalObjects last recoverCouldBeObj.
	recoveredObject := (recoveredObject at: 1) at: 1.
	self deny: recoveredObject class equals: OOPAbnormalEntity.
	self assert: recoveredObject address equals: recoverableObject.
	
	
	
