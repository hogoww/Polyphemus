initialization
initializeObjectsFromMemory
	self setUpBasicIndexes.
	self reifyAllOops.
	self createOrOverrideParticularObjects.
	flagErrorObjects ifTrue: [ self fillBlankBetweenOop ].
	self createCompressedVersion.