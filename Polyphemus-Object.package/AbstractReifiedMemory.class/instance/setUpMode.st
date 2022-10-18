initialization
setUpMode
	memory interpreter imageName ifNil: [ mode := SimulatorMode. ^ self ].
	
	mode := 
		(memory numSlotsOf: self metaclass)  < 7
			ifTrue:[ CandleMode ]
			ifFalse: [ PharoMode new ]