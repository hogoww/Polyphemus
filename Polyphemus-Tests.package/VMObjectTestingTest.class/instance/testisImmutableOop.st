test
testisImmutableOop
	| oop |
	oop := self reifyOop: self newZeroSizedObject.
	memory setIsImmutableOf: oop address to: true.
	
	self assert: oop isImmutableOop