initialization
initializeObjectsFromMemory
	self setUpBasicIndexes.
	self reifyAllOops.
	self createOrOverrideParticularObjects.
	self createCompressedVersion.