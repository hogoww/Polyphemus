test
testisContext
	| oop |
	self fail.
	oop := self objectForOop: self newZeroSizedObect.
	memory setIsImmutableOf: oop address to: true.
	
	self assert: oop isImmutableOop