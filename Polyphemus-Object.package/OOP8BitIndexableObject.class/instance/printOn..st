printing
printOn: aStream
	address = memory rememberedSetObj ifTrue: [ ^ aStream << 'Remembered Set' ].
	address printOn: aStream