tests-slotNames
testOopSlotNamesWithoutInheritence
	| behaviorClass |
	behaviorClass := reifiedMemory reifiedMetaclass.
	self assert: behaviorClass oopSlotNames size equals: 1.