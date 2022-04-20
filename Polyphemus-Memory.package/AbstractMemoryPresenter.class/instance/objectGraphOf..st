query
objectGraphOf: anOop

	colorProvider := ObjectGraphColorProvider forSelection: anOop objectGraph.
	statProvider colorProvider: colorProvider.
	self updateMemorySpace.