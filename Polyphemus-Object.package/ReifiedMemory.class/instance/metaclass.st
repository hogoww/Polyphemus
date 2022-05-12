accessing
metaclass
	^ metaclass ifNil: [ 
		| arrayClass |
		arrayClass := memory classAtIndex: (memory arrayClassIndexPun).
		metaclass := memory fetchClassOf: (memory fetchClassOf: arrayClass) ]