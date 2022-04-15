tests
testPrintOopForCharacter
	| oop object |
	oop := memory characterObjectOf: ($a asInteger).
	object := self objectForOop: oop.
	self assert: object printString equals: '$a'