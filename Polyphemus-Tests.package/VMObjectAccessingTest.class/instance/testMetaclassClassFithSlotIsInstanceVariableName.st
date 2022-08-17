tests-slotNames
testMetaclassClassFithSlotIsInstanceVariableName
	| metaClassClassOop |
	
	metaClassClassOop := (self reifyOop: reifiedMemory metaclass) oopClass.
	self assert: metaClassClassOop allOopSlotNames fifth printString equals: #instVarNames