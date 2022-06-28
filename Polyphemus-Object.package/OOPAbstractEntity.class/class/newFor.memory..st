instance creation
newFor: anAddress memory: memory

	(memory objectAt: anAddress) ifNotNil: [ :obj | ^ obj ].
	^ self instantiateObject: anAddress on: memory
	
	