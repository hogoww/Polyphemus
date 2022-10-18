initialization
initializeObjectsFromMemory
	self setUpBasicIndexes.
	self initializeMode.
	self createOrOverrideParticularObjects.
	self reifiedClassTable computeSubclasses.
	self createCompressedVersion.