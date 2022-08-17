tests-slotNames
testMetaclassHasFourClassVariablesNames
	| metaClassOop |
	
	metaClassOop := self reifyOop: reifiedMemory metaclass.
	self assert: metaClassOop allOopSlotNames size equals: 4