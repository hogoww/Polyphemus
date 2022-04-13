tests
testCreatingClassObject
	| oop object |
	oop := memory fetchClassOf: (memory integerObjectOf: 42).
	object := AbstractSpurEntity newFor: oop image: image.
	self assert: object isClassOop.