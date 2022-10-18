tests-slotNames
testMetaclassFourthSlotIsSoleInstance
	| metaClassOop |
	
	metaClassOop := reifiedMemory reifiedMetaclass.
	self assert: metaClassOop allOopSlotNames fourth printString equals: #soleInstance.