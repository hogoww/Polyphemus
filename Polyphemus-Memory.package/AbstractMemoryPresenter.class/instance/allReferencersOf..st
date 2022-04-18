query
allReferencersOf: anOop

	colorProvider := AllReferencerColorProvider forSelection: anOop allReferencers.
	self updateMemorySpace.