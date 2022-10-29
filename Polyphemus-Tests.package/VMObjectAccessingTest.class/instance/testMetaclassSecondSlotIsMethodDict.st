tests-slotNames
testMetaclassSecondSlotIsMethodDict
	| metaClassOop |
	
	metaClassOop := reifiedMemory reifiedMetaclass.
	self assert: metaClassOop allOopSlotNames second printString equals: #methodDict.