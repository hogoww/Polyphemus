tests-slotNames
testOopSlotNamesHasOnlyLocalInstanceVariableNamesWithInheritance
	| metaClassOop |
	metaClassOop := reifiedMemory reifiedMetaclass.
	self assert: metaClassOop oopSlotNames size equals: 1.
	self assert: metaClassOop oopSlotNames anyOne printString equals: #soleInstance.