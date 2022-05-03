tests
testPrintOopForCharacter
	| oop object |
	oop := memory characterObjectOf: ($a asInteger).
	object := self reifyOop: oop.
	self assert: object printString equals: '$a'