initialization
setUp
	| initializer |
	initializer := AbstractInspectorsTest new.
	initializer imagePath: AbstractInspectorsTest pathToMinimalP11.
	initializer setUpUsingImage.
	self setUpFromInitializer: initializer.
	reifiedMemory := FullyReifiedMemory on: memory