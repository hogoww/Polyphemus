query
allReferencersOf: anOop

	colorProvider := AllReferencerColorProvider forSelection: anOop allReferencers.
	statProvider colorProvider: colorProvider.
	self updateMemorySpace.