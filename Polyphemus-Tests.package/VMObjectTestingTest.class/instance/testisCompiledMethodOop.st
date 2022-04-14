test
testisCompiledMethodOop
	| oop |
	oop := self objectForOop: methodBuilder buildMethod.
	
	self assert: oop isCompiledMethodOop