initialization
initializeNonSpecComponents
	scaling := self scalingToDefault.
	colorProvider := self defaultColorProvider.
	reifiedMemory := ReifiedMemory on: interpreter objectMemory.
	
	scopingBlock := self scopeToallMemory.
	self updateScope.
	
	queryInput := SpExplicitInputPort new presenter: self ; yourself.
	updateOutput := SpExplicitOutputPort new presenter: self ; yourself.