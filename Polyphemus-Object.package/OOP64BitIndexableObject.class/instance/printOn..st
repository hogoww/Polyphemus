printing
printOn: aStream
	address = memory rememberedSetObj ifTrue: [ ^ aStream << 'Remembered Set' ].
	address = memory freeListsObj ifTrue:[ ^ aStream << 'Free Lists' ].
	address printOn: aStream