helper
interpretUntilMethodChangedNumberOfTimes: anInteger

	| interpretedMethod previousMethod currentMethod |
	interpretedMethod := 1.
	currentMethod := previousMethod := interpreter method.
	interpreter interpretWhile: [ 
		currentMethod := interpreter method.
		currentMethod = previousMethod ifFalse: [ 
			interpretedMethod := interpretedMethod + 1.
			previousMethod := currentMethod ].
		interpretedMethod < anInteger ].