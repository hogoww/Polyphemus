tests-printing
testRegularObjectPrintsInstanceOfClassName
	| oop object |
	oop := self newObjectWithSlots: 1.
	object := self reifyOop: oop.
	
	self assert: object printString equals: 'Instance of PCArray'