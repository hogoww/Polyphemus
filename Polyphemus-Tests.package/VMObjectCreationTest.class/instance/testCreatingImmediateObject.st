tests
testCreatingImmediateObject
	| oop object |
	oop := memory integerObjectOf: 42.
	object := self objectForOop: oop.
	self assert: object isImmediateOop.