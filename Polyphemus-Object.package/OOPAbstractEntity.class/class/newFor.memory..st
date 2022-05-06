instance creation
newFor: anAddress memory: image

	| handler |
	anAddress = 0 ifTrue: [ handler := { OOPImmediate } ].
	handler := handler ifNil: [ 
		           (OOPImmediate canHandle: anAddress memory: image) ifTrue: [ 
			           { OOPImmediate } ] ].
	handler := handler ifNil: [ 
		           OOPAbstractEntity allSubclasses select: [ :aSubclass | 
			           aSubclass = OOPImmediate
				           ifFalse: [ aSubclass canHandle: anAddress memory: image ]
				           ifTrue: false ] ].


	^ (handler ifEmpty: [ OOPRegularObject ] ifNotEmpty: [ 
		   handler size > 1 
        ifTrue: [ handler last ]
							ifFalse: [ handler first ]]) on: anAddress memory: image