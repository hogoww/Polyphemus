tests-slotNamesAccessing
testMetaclassNonExistingSlotNamed
	self assert: (reifiedMemory reifiedMetaclass oopSlotNamed: #formatteu) isNil