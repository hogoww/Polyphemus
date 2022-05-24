running
setUp

	super setUp.
	memory allOldSpaceObjectsDo: [ :oop | 
		(OOPCompiledMethod canHandle: oop memory: reifiedMemory) 
			ifTrue: [ ^ compiledMethodObject := self reifyOop: oop ] ].