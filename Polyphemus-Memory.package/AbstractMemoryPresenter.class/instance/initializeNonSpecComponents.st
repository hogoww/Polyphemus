initialization
initializeNonSpecComponents
	scaling := self scalingToDefault.
	self colorProvider. "Lazy initialization if no colorProvider is ready"
	image := SpurSimulatorImage onSpurSimulator: interpreter objectMemory.
	self initializeScope.
	queryInput := SpExplicitInputPort new presenter: self ; yourself.
	updateOutput := SpExplicitOutputPort new presenter: self ; yourself.