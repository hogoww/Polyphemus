initialization
initializeMissingComponents
	self setDefaultScaling.
	self colorProvider. "Lazy initialization if no colorProvider is ready"
	image := SpurSimulatorImage onSpurSimulator: interpreter objectMemory.
	"self refreshStack."
	self updateMemorySpace.
	self updateStatsAndLegend: colorProvider.
	