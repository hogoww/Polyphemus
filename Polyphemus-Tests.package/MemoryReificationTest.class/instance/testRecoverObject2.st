tests
testRecoverObject2

	| corruptedObject referencedObject1 referencerObject recoverableObject abnormalObjects recoveredObject |
	"Creation order matter, pay attention"
	referencerObject := self newOldSpaceObjectWithSlots: 2.
	corruptedObject := self newOldSpaceObjectWithSlots: 1.
	recoverableObject := self newOldSpaceObjectWithSlots: 0.
	referencedObject1 := self newOldSpaceObjectWithSlots: 0.
	
	memory
		storePointer: 0
		ofObject: referencerObject
		withValue: referencedObject1.
			
	memory
		storePointer: 0
		ofObject: corruptedObject 
		withValue: recoverableObject.

	self corrupt: corruptedObject.

	reifiedMemory := PreReifiedMemory on: memory.

	abnormalObjects := reifiedMemory select: [:anObj | anObj isAbnormalOop  ].
	
	self assert: abnormalObjects size equals: 1.
	
	"The second abnormal object is recoverable"
	recoveredObject := abnormalObjects last recoverCouldBeObj.
 
	recoveredObject := (recoveredObject at: 1) at: 1.
	self deny: recoveredObject class equals: OOPAbnormalEntity.
	self assert: recoveredObject address equals: recoverableObject.
	
	
	
