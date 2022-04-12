test-color
testClassOopIsColoredProperly
	
	| smallIntegerClass box |
	smallIntegerClass := memory fetchClassOf: (memory integerObjectOf: 1).
	box := stackInspector oopWithAddress: smallIntegerClass.
	
	self assert: box paint equals: stackInspector colorProvider classOopColor.