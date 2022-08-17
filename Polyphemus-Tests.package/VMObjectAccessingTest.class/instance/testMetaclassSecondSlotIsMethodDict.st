tests-slotNames
testMetaclassSecondSlotIsMethodDict
	| metaClassOop |
	
	metaClassOop := self reifyOop: reifiedMemory metaclass.
	self assert: metaClassOop allOopSlotNames second printString equals: #methodDict.