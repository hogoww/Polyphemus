tests-testing
testImmutabilityISFalseByDefault
	| object |
	object := image objectForOop: (self newObjectWithSlots: 1).
	
	self assert: object isImmutable not