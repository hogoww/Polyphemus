initialization
initializeNonSpecComponents
	scaling := self scalingToDefault.
	colorProvider := self defaultColorProvider.
	
	queryInput := SpExplicitInputPort new presenter: self ; yourself.
	updateOutput := SpExplicitOutputPort new presenter: self ; yourself.