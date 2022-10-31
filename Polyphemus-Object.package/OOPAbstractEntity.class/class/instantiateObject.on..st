instance creation
instantiateObject: anAddress on: memory

	| handler |

   (OOPImmediate canHandle: anAddress memory: memory) ifTrue: [ 
		handler := { OOPImmediate } ].
	
	handler := handler ifNil: [ 
		SubclassesToEvaluate select: [ :aSubclass | 
				aSubclass canHandle: anAddress memory: memory ] ].

	^ (handler ifEmpty: [ OOPRegularObject ] ifNotEmpty: [ handler last ])
		on: anAddress memory: memory