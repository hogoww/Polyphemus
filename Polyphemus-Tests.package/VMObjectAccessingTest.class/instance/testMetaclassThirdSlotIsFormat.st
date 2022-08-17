tests-slotNames
testMetaclassThirdSlotIsFormat
	| metaClassOop |
	
	metaClassOop := self reifyOop: reifiedMemory metaclass.
	self assert: metaClassOop allOopSlotNames third printString equals: #format.