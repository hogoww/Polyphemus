finding
findObjectAfter: anAddress

	| anIndex max |
	anIndex := (self indexForAddress: anAddress) + 1.
	max := objectsArray size.

	[ (objectsArray at: anIndex) isNil and: [ anIndex < max ] ]
	 	whileTrue: [ anIndex := anIndex + 1 ].

	^ anIndex = max
		ifTrue: [ nil ]
		ifFalse: [ objectsArray at: anIndex ]