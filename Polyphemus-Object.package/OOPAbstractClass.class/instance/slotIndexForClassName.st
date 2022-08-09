instance creation
slotIndexForClassName 
	memory isSimulator ifTrue: [ ^ 1 "false index" ].
	^ memory isCandleImage
		ifTrue: [ self class candleClassIndexForName ]
		ifFalse: [ self class classIndexForName ]