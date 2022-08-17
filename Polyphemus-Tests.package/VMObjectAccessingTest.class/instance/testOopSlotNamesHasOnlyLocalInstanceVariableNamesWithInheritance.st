tests-slotNames
testOopSlotNamesHasOnlyLocalInstanceVariableNamesWithInheritance
	| metaClassOop |
	metaClassOop := self reifyOop: reifiedMemory metaclass.
	self assert: metaClassOop oopSlotNames size equals: 1.
	self assert: metaClassOop oopSlotNames anyOne printString equals: #soleInstance.