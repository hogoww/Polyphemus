query
instancesOop
	^ memory select: [ :anOop |
		anOop oopClass = self ]