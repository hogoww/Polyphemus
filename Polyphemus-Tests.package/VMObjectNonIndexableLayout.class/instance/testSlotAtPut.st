initialization
testSlotAtPut
	| index |
	index := 1.
	nonIndexableLayoutObject slotAt: index put: (memory integerObjectOf: 42).
	self assert: (nonIndexableLayoutObject slotAt: index) isImmediateOop