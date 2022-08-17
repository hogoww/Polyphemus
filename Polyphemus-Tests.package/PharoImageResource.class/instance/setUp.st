initialization
setUp
	| initializer |
	initializer := AbstractInspectorsTest new.
	initializer imageName: self imageName.
	initializer setUpUsingImage.
	self setUpFromInitializer: initializer.
	reifiedMemory := PreReifiedMemory on: memory