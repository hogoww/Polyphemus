initialization
newInterpreter

	memory := self newMemory.

	self interpreterClass
		initializeWithOptions: self initializationOptions
		objectMemoryClass: memory class.

	^ self interpreterClass basicNew
		  objectMemory: memory;
		  basicInitialize