accessing
sender

	| frameCaller frameAddress interpreter |
	sender ifNil: [ 
		frameCaller := self reifiedSlotAt: 2.
		frameCaller isIntegerOop
			ifTrue: [ 
				frameCaller := frameCaller asInteger.
				frameCaller  = 0 ifTrue: [ ^ nil ].
				frameAddress := frameCaller * memory wordSize.
				interpreter := memory interpreter.
				sender := memory reifyOop: (interpreter
						           ensureFrameIsMarried: frameAddress
						           SP: interpreter stackPointer) ]
			ifFalse: [ "certainly a Context " sender := frameCaller ] ].
	^ sender