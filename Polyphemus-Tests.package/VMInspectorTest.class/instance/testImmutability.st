test-testing
testImmutability
	| object objectOop |
	objectOop := (self newObjectWithSlots: 1).
	object := image objectForOop: objectOop.
	image simulator setIsImmutableOf: objectOop to: true.
	
	self assert: object isImmutable