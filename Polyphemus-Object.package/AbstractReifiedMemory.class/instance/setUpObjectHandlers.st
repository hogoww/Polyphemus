initialization
setUpObjectHandlers
	objectHandlers := OOPAbstractEntity allSubclasses select: [ :aSubclass | 
		| method |
		aSubclass = OOPImmediate 
			ifTrue: [ false ]
			ifFalse:	[
				method := aSubclass classSide methodDictionary at: #canHandle:memory: ifAbsent: nil.
				method isNotNil ]
		]