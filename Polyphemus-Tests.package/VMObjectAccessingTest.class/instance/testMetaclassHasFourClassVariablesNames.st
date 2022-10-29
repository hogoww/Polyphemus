tests-slotNames
testMetaclassHasFourClassVariablesNames
	| metaClassOop |
	
	metaClassOop := reifiedMemory reifiedMetaclass.
	self assert: metaClassOop allOopSlotNames size equals: 4