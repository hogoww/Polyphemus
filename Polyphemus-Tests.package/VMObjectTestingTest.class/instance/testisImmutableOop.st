test
testisImmutableOop
	| oop |
	oop := self objectForOop: self newZeroSizedObject.
	memory setIsImmutableOf: oop address to: true.
	
	self assert: oop isImmutableOop