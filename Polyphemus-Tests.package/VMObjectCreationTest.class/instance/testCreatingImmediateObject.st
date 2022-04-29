tests
testCreatingImmediateObject
	| oop object |
	oop := memory integerObjectOf: 42.
	object := self reifyOop: oop.
	self assert: object isImmediateOop