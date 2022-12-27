printing
isSymbol

	self oopClassName = 'Symbol' ifTrue: [ ^ true ].
	self oopClass oopSuperclass oopName = 'Symbol' ifTrue: [ ^ true ].
	^false