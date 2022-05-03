tests
testCreatingCompiledMethodOBject
	| oop object |
	oop := methodBuilder buildMethod.
	object := self reifyOop: oop.
	self assert: object isCompiledMethodOop