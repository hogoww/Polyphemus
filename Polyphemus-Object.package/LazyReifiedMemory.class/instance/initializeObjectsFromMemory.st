initialization
initializeObjectsFromMemory
	self setUpBasicIndexes.
	self createOrOverrideParticularObjects.
	self reifiedClassTable computeSubclasses.
	self createCompressedVersion.
	self initializeMode