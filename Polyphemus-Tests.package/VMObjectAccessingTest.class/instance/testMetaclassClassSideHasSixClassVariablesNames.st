tests-slotNames
testMetaclassClassSideHasSixClassVariablesNames
	| metaClassClassOop |
	
	metaClassClassOop := (self reifyOop: reifiedMemory metaclass) oopClass.
	self assert: metaClassClassOop allOopSlotNames size equals: 6