tests-slotNames
testOopSlotNamesHasOnlyLocalInstanceVariableNamesWithInheritance
	| metaclassOop |
	metaclassOop := reifiedMemory reifiedMetaclass.
	self assert: metaclassOop oopSlotNames size equals: 1.
	self assert: metaclassOop oopSlotNames anyOne printString equals: #soleInstance