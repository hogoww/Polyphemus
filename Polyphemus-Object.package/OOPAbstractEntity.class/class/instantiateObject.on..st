instance creation
instantiateObject: anAddress on: memory

	| handler |
	anAddress = 0 ifTrue: [ handler := { OOPImmediate } ].

	handler := handler ifNil: [				       
    (OOPImmediate canHandle: anAddress memory: memory) ifTrue: [ 
			           { OOPImmediate } ] ].
	handler := handler ifNil: [ 
		SubclassesToEvaluate select: [ :aSubclass | 
				aSubclass canHandle: anAddress memory: memory ] ].


	^ (handler ifEmpty: [ OOPRegularObject ] ifNotEmpty: [ handler last ])
		on: anAddress memory: memory