initialization
setUpMode
	memory interpreter imageName ifNil: [ mode := self simulatorMode. ^ self ].
	
	mode := 
		(memory numSlotsOf: self metaclass)  < 7
			ifTrue:[ self candleImageMode ]
			ifFalse: [ self pharoImageMode ]