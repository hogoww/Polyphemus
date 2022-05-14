accessing
oopSubclasses
	subclasses ifNotNil: [ ^ subclasses ].
	self classTable computeSubclasses.
	^ subclasses