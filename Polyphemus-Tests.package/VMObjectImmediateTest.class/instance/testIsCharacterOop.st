tests
testIsCharacterOop
	| oop object |
	oop := memory characterObjectOf: 1.
	object := self reifyOop: oop.
	self assert: object isCharacterOop