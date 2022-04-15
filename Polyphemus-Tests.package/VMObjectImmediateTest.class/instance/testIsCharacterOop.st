tests
testIsCharacterOop
	| oop object |
	oop := memory characterObjectOf: 1.
	object := self objectForOop: oop.
	self assert: object isCharacterOop