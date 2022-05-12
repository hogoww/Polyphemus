query
instancesOop
	^ memory select: [ :anOop |
		anOop oopClass address = address ]