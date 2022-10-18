tests-slotNames
testMetaclassClassSixthSlotIsClassVariables
	| metaClassClassOop |
	
	metaClassClassOop := reifiedMemory reifiedMetaclass oopClass.
	self assert: metaClassClassOop allOopSlotNames sixth printString equals: #classVariables