instance creation
newFor: anAddress image: image

	| handler |
	anAddress = 0 ifTrue: [ handler := { OOPImmediate } ].
	handler := handler ifNil: [ 
		           (OOPImmediate canHandle: anAddress image: image) ifTrue: [ 
			           { OOPImmediate } ] ].
	handler := handler ifNil: [ 
		           OOPAbstractEntity allSubclasses select: [ :aSubclass | 
			           aSubclass = OOPImmediate
				           ifFalse: [ aSubclass canHandle: anAddress image: image ]
				           ifTrue: false ] ].


	^ (handler ifEmpty: [ OOPRegularObject ] ifNotEmpty: [ 
		   handler size > 1 
        ifTrue: [ handler last ]
							ifFalse: [ handler first ]]) on: anAddress image: image