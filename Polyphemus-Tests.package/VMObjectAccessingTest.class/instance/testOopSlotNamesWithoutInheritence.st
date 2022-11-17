tests-slotNames
testOopSlotNamesWithoutInheritence
	| behaviorClass |
	behaviorClass := reifiedMemory reifiedMetaclass oopSuperclass.
	self assert: behaviorClass oopSlotNames first printString equals: #superclass