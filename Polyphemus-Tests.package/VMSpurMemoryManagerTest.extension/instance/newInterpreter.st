*Polyphemus-Tests
newInterpreter
	memory := self newMemory.

	self interpreterClass
		initializeWithOptions:
			{#BytesPerWord.
			self wordSize.
			#ObjectMemory.
			memory class name}
		objectMemoryClass: memory class.

	^ self interpreterClass basicNew
		objectMemory: memory;
		basicInitialize