initialization
initializeMissingComponents
	self colorProvider. "Lazy initialization if no colorProvider is ready"
	objectInspector := SpurSimulatorImage onSpurSimulator: interpreter objectMemory.
	"self refreshStack."
	self buildMemorySpace: newSpace.
	self buildMemorySpace: oldSpace.