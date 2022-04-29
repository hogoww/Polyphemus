tests
testCreatingClassObject
	| oop object |
	oop := memory fetchClassOf: (memory integerObjectOf: 42).
	object := self reifyOop: oop.
	self assert: object isClassOop