running
setUp
	| initializer |
	super setUp.
	initializer := AbstractInspectorsTest new.
	initializer imagePath: self imagePath.
	initializer setUpForResource.
	self setUpFromInitializer: initializer.