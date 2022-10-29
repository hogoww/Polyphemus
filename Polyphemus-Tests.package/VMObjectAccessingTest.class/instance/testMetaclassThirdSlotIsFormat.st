tests-slotNames
testMetaclassThirdSlotIsFormat
	| metaClassOop |
	
	metaClassOop := reifiedMemory reifiedMetaclass.
	self assert: metaClassOop allOopSlotNames third printString equals: #format.