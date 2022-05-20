printing
printOn: aStream
	memory freeListsObj = address ifTrue:[ ^ aStream << 'Free Lists' ].
	address printOn: aStream