tests-slotNames
testOopSlotNamesWithInheritence
	| behaviorClass |
	behaviorClass := reifiedMemory reifiedMetaclass.
	self assert: behaviorClass allOopSlotNames size > 1