test-color
testClassOopIsColoredProperly
	
	| smallIntegerClass box |
	smallIntegerClass := memory fetchClassOf: (memory integerObjectOf: 1).
	box := oldSpace oopForAddress: smallIntegerClass.

	self assert: box paint equals: oldSpace colorProvider classOopColor.