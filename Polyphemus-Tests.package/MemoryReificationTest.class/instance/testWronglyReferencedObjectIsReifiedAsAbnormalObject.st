tests
testWronglyReferencedObjectIsReifiedAsAbnormalObject

	| referencerObject wrongAddress |
	referencerObject := self newOldSpaceObjectWithSlots: 1.
	
	"There should be the bridge at endOfMemory - 16 and since an Object cannot be 8, endOfMemory - 24 is always wrong"
	wrongAddress := (memory endOfMemory - 24).
	memory
		storePointer: 0
		ofObject: referencerObject
		withValue: wrongAddress.
	
	reifiedMemory := PreReifiedMemory on: memory.
	
	"We force to go through all slots"
	(reifiedMemory objectAt: referencerObject) allSlots.
	
	self assert: reifiedMemory abnormalObjects anyOne address equals: wrongAddress.
	self assert: reifiedMemory abnormalObjects anyOne class equals: OOPReferencedAbnormalEntity.
