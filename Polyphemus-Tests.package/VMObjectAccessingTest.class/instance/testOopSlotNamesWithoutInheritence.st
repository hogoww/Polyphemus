tests-slotNames
testOopSlotNamesWithoutInheritence
	| behaviorClass |
	behaviorClass := (self reifyOop: reifiedMemory metaclass) oopSuperclass.
	self assert: behaviorClass oopSlotNames first printString equals: #superclass.