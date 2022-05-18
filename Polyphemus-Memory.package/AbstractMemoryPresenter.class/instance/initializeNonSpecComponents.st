initialization
initializeNonSpecComponents
	scaling := self scalingToDefault.
	colorProvider := self defaultColorProvider.
	reifiedMemory := ReifiedMemory on: interpreter objectMemory.
	
	scopingBlock := self scopeToAllMemory.
	self updateScope.
	
	queryInput := SpExplicitInputPort new presenter: self ; yourself.
	updateOutput := SpExplicitOutputPort new presenter: self ; yourself.