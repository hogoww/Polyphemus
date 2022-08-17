tests-slotNames
testAllOopSlotNamesHasAllInstanceVariableNamesWithInheritance
	| metaClassOop slotNames |
	
	metaClassOop := self reifyOop: reifiedMemory metaclass.
	slotNames := metaClassOop allOopSlotNames.
	self assert: slotNames size equals: 4.
	self assert: slotNames first printString equals: #superclass.
	self assert: slotNames second printString equals: #methodDict.
	self assert: slotNames third printString equals: #format.
	self assert: slotNames fourth printString equals: #soleInstance.
	
	