initialization
setUp
	| initializer |
	initializer := AbstractInspectorsTest new.
	initializer imageName: self candleImageName.
	initializer setUpUsingImage.
	self setUpFromInitializer: initializer.
	reifiedMemory := PreReifiedMemory on: memory