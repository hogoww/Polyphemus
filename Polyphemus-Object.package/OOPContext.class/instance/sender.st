accessing
sender

	| frameCaller frameAddress interpreter |
	sender ifNil: [ 
		frameCaller := self reifiedSlotAt: 2.
		frameCaller isIntegerOop
			ifTrue: [ 
				frameAddress := frameCaller asInteger * memory wordSize.
				interpreter := memory interpreter.
				sender := memory reifyOop: (interpreter
						           ensureFrameIsMarried: frameAddress
						           SP: interpreter stackPointer) ]
			ifFalse: [ "certainly a Context " ^ frameCaller ] ].
	^ sender