tests-slotNames
testMetaclassExistingSlotNamed
	self assert: (reifiedMemory reifiedMetaclass oopSlotNamed: #format) isImmediateOop