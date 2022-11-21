tests-slotNamesAccessing
testMetaclassSlotNamed
	self assert: (reifiedMemory reifiedMetaclass oopSlotNamed: #format) isImmediateOop