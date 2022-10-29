initialization
setUpMode
	memory interpreter imageName ifNil: [ mode := SimulatorMode. ^ self ].
	
	mode := 
		(memory numSlotsOf: (memory classAtIndex: self metaclassIndex))  < 7
			ifTrue:[ CandleMode ]
			ifFalse: [ PharoMode new ].
	mode initializeFrom: self