running
setUp

	super setUp.
	memory allOldSpaceObjectsDo: [ :oop | 
		(OOPCompiledMethod canHandle: oop memory: memory) 
			ifTrue: [ ^ compiledMethodObject := self reifyOop: oop ] ].