tests
testPrintOopForSmallInteger
	| oop object |
	oop := memory integerObjectOf: 1.
	object := self objectForOop: oop.
	self assert: object printString equals: '1'