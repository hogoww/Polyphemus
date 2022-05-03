test
testisCompiledMethodOop
	| oop |
	oop := self reifyOop: methodBuilder buildMethod.
	
	self assert: oop isCompiledMethodOop