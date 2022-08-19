query
allReferencers
	^ memory select: [ :anOop | anOop references: self ].