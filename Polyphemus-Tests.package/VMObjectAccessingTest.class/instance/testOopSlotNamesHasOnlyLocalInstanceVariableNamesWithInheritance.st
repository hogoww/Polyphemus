tests-slotNames
testOopSlotNamesHasOnlyLocalInstanceVariableNamesWithInheritance
	"Candle and Pharo have different naming for this IV.."
	| metaclassOop |
	metaclassOop := reifiedMemory reifiedMetaclass.
	self assert: metaclassOop oopSlotNames size equals: 1.
	self assert: (#(soleInstance thisClass) includes: metaclassOop oopSlotNames anyOne printString) 