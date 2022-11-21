tests-slotNamesAccessing
testMetaclassExistingSlotNamed
	self assert: (reifiedMemory reifiedMetaclass oopSlotNamed: #format) isImmediateOop