tests-printing
testRegularObjectPrintsAddressIfBadClass
	| oop object |
	oop := self newObjectWithSlots: 1 classIndex: 0.
	object := self objectForOop: oop.
	
	self assert: object printString equals: oop printString