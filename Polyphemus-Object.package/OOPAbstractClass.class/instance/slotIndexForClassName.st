instance creation
slotIndexForClassName 
	^ memory isCandleImage
		ifTrue: [ self class candleClassIndexForName ]
		ifFalse: [ self class regularClassIndexForName ]