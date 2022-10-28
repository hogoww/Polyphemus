running
setUp

	PharoCandleImageResource current setUpTestCase: self.
	memory allOldSpaceObjectsDo: [ :oop | 
		(OOPCompiledMethod canHandle: oop memory: reifiedMemory) 
			ifTrue: [ ^ compiledMethodObject := self reifyOop: oop ] ].