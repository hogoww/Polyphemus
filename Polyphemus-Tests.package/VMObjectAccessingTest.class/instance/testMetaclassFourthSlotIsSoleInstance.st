tests-slotNames
testMetaclassFourthSlotIsSoleInstance
	| metaClassOop |
	
	metaClassOop := self reifyOop: reifiedMemory metaclass.
	self assert: metaClassOop allOopSlotNames fourth printString equals: #soleInstance.