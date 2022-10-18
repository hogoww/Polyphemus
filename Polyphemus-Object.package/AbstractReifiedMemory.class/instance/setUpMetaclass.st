initialization
setUpMetaclass
	| arrayClass |
	arrayClass := memory classAtIndex: (memory arrayClassIndexPun).
	metaclass := memory classIndexOf: (memory fetchClassOf: arrayClass)