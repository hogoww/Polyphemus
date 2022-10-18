initialization
initializeObjectsFromMemory
	self setUpBasicIndexes.
	self reifyAllOops.
	self createOrOverrideParticularObjects.
	self reifiedClassTable computeSubclasses.
	flagErrorObjects ifTrue: [ self fillBlankBetween: lastKnownObject address and: objectsArray size ].
	self createCompressedVersion.
	self initializeMode