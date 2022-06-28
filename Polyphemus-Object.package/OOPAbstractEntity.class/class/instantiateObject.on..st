instance creation
instantiateObject: anAddress on: memory

	| handler |
	anAddress = 0 ifTrue: [ handler := { OOPImmediate } ].
	handler := handler ifNil: [ 
		       
    (OOPImmediate canHandle: anAddress memory: memory) ifTrue: [ 
			           { OOPImmediate } ] ].
	handler := handler ifNil: [ 
		           OOPAbstractEntity allSubclasses select: [ :aSubclass | 
			           aSubclass = OOPImmediate
				           ifFalse: [ aSubclass canHandle: anAddress memory: memory ]
				           ifTrue: false ] ].


	^ (handler ifEmpty: [ OOPRegularObject ] ifNotEmpty: [ 
		   handler size > 1 
        ifTrue: [ handler last ]
							ifFalse: [ handler first ]]) on: anAddress memory: memory
