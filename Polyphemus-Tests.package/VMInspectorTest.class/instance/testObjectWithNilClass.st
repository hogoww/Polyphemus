tests-printing
testObjectWithNilClass
	| oop object |
	oop := self newObjectWithSlots: 1.
	object := SpurObject on: oop image: image.

	self assert: object printString equals: oop printString