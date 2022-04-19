test-color
testMetaclassIsColoredProperly
		
	| smallIntegerClass smallIntegerClassClass |
	smallIntegerClass := memory fetchClassOf: (memory integerObjectOf: 1).
	smallIntegerClassClass := memory fetchClassOf: smallIntegerClass.
	
	
	self assert: (oldSpace oopForAddress: smallIntegerClassClass) paint equals: oldSpace colorProvider metaclassOopColor.