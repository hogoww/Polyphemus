query
allReferencersOf: anOop
	self updateColorProviderTo: (BasicSelectionColorProvider forSelection: anOop allReferencers)
