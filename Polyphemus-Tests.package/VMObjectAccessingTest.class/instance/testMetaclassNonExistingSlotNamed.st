tests-slotNames
testMetaclassNonExistingSlotNamed
	self assert: (reifiedMemory reifiedMetaclass oopSlotNamed: #formatteu) isNil