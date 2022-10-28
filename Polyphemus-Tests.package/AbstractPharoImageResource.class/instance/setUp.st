running
setUp
	| initializer |
	super setUp.
	initializer := AbstractInspectorsTest new.
	initializer imagePath: self imagePath.
	initializer setUpUsingImage.
	self setUpFromInitializer: initializer.
	reifiedMemory := FullyReifiedMemory on: memory