running
setUp

	super setUp.
	memory allOldSpaceObjectsDo: [ :oop | 
		(OOPCompiledMethod canHandle: oop image: image) 
			ifTrue: [ ^ compiledMethodObject := self objectForOop: oop ] ].