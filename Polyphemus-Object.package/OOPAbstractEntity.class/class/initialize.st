instance creation
initialize
	SubclassesToEvaluate := self allSubclasses select: [ :aSubclass | 
		| method |
		method := aSubclass classSide methodDictionary at: #canHandle:memory: ifAbsent: nil.
		method isNotNil
			"ifNil: [ false ]
			ifNotNil: [ method ]."
		]