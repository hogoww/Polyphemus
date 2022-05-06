running
setUp

	super setUp.
	memory allOldSpaceObjectsDo: [ :oop | 
		(OOPCompiledMethod canHandle: oop image: memory) 
			ifTrue: [ ^ compiledMethodObject := self reifyOop: oop ] ].