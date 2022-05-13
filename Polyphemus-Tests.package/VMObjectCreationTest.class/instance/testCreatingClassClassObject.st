tests
testCreatingClassClassObject
	| oop object |
	oop := memory fetchClassOf: (memory fetchClassOf: (memory integerObjectOf: 42)).
	object := self reifyOop: oop.
	self assert: object isClassSideOop