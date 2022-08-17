tests-slotNames
testMetaclassClassSixthSlotIsClassVariables
	| metaClassClassOop |
	
	metaClassClassOop := (self reifyOop: reifiedMemory metaclass) oopClass.
	self assert: metaClassClassOop allOopSlotNames sixth printString equals: #classVariables