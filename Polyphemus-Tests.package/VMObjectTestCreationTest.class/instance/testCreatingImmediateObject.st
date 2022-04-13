tests
testCreatingImmediateObject
	| oop object |
	oop := memory integerObjectOf: 42.
	object := AbstractSpurEntity newFor: oop image: image.
	self assert: object isImmediateOop.