tests-slotNames
testMetaclassFirstSlotIsSuperclass
	| metaClassOop |
	
	metaClassOop := self reifyOop: reifiedMemory metaclass.
	self assert: metaClassOop allOopSlotNames first printString equals: #superclass.