tests-testing
testIsNotImmediateObject
	| object |
	object := image objectForOop: (self newObjectWithSlots: 1).
	
	self assert: object isImmediate not