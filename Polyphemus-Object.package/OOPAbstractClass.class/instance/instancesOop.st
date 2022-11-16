query
instancesOop
	^ memory select: [ :anOop | anOop oopClassTag = self oopClassIndex ]