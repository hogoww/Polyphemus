initialization
initializeNonSpecComponents
	scaling := self scalingToDefault.
	colorProvider := self defaultColorProvider.
	self setScopeToAllMemory.
	reifiedMemory := ReifiedMemory on: interpreter objectMemory.
	self initializeScope.
	queryInput := SpExplicitInputPort new presenter: self ; yourself.
	updateOutput := SpExplicitOutputPort new presenter: self ; yourself.