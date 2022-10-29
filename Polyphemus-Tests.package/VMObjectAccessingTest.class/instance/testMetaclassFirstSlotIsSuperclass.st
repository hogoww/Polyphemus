tests-slotNames
testMetaclassFirstSlotIsSuperclass
	| metaClassOop |
	
	metaClassOop := reifiedMemory reifiedMetaclass.
	self assert: metaClassOop allOopSlotNames first printString equals: #superclass.