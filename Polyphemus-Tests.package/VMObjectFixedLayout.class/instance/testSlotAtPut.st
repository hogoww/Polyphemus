initialization
testSlotAtPut
	| index |
	index := 1.
	fixedLayoutObject slotAt: index put: (memory integerObjectOf: 42).
	self assert: (fixedLayoutObject slotAt: index) isImmediateOop