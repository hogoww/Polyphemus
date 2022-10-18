initialization
setUpMetaclass
	| arrayClass |
	arrayClass := memory classAtIndex: (memory arrayClassIndexPun).
	metaclassIndex := memory classIndexOf: (memory fetchClassOf: arrayClass)