tests-printing
testRegularObjectPrintsAddress
	| oop object |
	oop := self newObjectWithSlots: 1.
	object := self objectForOop: oop.
	
	self assert: object printString equals: oop printString