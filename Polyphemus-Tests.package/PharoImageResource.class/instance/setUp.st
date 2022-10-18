initialization
setUp
	| initializer |
	initializer := AbstractInspectorsTest new.
	initializer imagePath: AbstractInspectorsTest pathToMinimal64Bit.
	initializer setUpUsingImage.
	self setUpFromInitializer: initializer.
	reifiedMemory := PreReifiedMemory on: memory