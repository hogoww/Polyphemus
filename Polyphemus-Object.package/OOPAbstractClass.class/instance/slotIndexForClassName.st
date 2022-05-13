instance creation
slotIndexForClassName 
	^ memory isCandleImage
		ifTrue: [ 4 ]
		ifFalse: [ self class regularClassIndexForName ]