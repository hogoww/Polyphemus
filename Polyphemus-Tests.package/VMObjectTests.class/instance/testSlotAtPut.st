initialization
testSlotAtPut
	| index |
	index := 1.
	self testedObject slotAt: index put: (memory integerObjectOf: 42).
	self assert: (self testedObject reifiedSlotAt: index) isImmediateOop