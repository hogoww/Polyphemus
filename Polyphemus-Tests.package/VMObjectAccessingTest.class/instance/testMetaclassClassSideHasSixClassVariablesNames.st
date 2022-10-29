tests-slotNames
testMetaclassClassSideHasSixClassVariablesNames
	| metaClassClassOop |
	
	metaClassClassOop := reifiedMemory reifiedMetaclass oopClass.
	self assert: metaClassClassOop allOopSlotNames size equals: 6