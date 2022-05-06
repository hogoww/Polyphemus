printing
printOn: aStream
	memory rememberedSetObj = address ifTrue: [ ^ aStream << 'Remembered Set' ].
	memory freeListsObj = address ifTrue:[ ^ aStream << 'Free Lists' ].
	address printOn: aStream