tests
testClassSideOfClassIsClassOfClassSide
	| oop object |
	oop := memory integerObjectOf: 42.
	object := self reifyOop: oop.
	self assert: object oopClass oopClassSide equals: object oopClass oopClass