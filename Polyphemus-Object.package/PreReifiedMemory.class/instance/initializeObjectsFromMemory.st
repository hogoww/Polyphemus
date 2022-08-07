initialization
initializeObjectsFromMemory
	self setUpBasicIndexes.
	self reifyAllOops.
	self createOrOverrideParticularObjects.
	flagErrorObjects ifTrue: [ self fillBlankBetween: lastKnownObject address and: objectsArray size ].
	self createCompressedVersion.