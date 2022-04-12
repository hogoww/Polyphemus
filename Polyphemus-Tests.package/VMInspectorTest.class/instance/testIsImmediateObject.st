test-testing
testIsImmediateObject
	| object |
	object := image objectForOop: (image simulator integerObjectOf: 42).
	
	self assert: object isImmediate