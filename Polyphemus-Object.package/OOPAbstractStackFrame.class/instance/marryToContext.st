marrying
marryToContext

	| interpreter |
	interpreter := memory interpreter.
	
	context := memory reifyOop: (interpreter ensureFrameIsMarried: self framePointer SP: interpreter stackPointer).
	
	^context