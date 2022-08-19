query
selectSubclassesOf: anOop
	self updateColorProviderTo: (BasicSelectionColorProvider forSelection: anOop oopSubclasses)
