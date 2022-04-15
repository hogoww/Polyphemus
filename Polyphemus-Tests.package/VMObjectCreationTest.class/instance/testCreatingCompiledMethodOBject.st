tests
testCreatingCompiledMethodOBject
	| oop object |
	oop := methodBuilder buildMethod.
	object := self objectForOop: oop.
	self assert: object isCompiledMethodOop