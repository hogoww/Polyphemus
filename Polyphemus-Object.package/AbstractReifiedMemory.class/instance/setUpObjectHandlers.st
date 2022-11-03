initialization
setUpObjectHandlers
	objectHandlers := OOPAbstractObject allSubclasses select: [ :aSubclass | | method |
		method := aSubclass classSide methodDictionary at: #canHandle:memory: ifAbsent: nil.
		method isNotNil
		].
	objectHandlers := objectHandlers reject: [ :c | OOPAbstractClass allSubclasses includes: c ].
	objectHandlers add: OOPForwarder.
