tests-slotNames
testMetaclassClassFithSlotIsInstVarNames
	| metaClassClassOop |
	
	metaClassClassOop := reifiedMemory reifiedMetaclass oopClass.
	self assert: metaClassClassOop allOopSlotNames fifth printString equals: #instVarNames