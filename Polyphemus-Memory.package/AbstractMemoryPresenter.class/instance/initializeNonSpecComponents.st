initialization
initializeNonSpecComponents
	self setDefaultScaling.
	self colorProvider. "Lazy initialization if no colorProvider is ready"
	image := SpurSimulatorImage onSpurSimulator: interpreter objectMemory.
	self updateMemorySpace.
	selection := #()