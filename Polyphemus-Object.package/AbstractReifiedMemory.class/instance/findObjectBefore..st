finding
findObjectBefore: anAddress

	| anIndex |
	anIndex := (self indexForAddress: anAddress).

	[ (objectsArray at: anIndex) isNil and: [ anIndex  > 0 ] ] 
		whileTrue: [ anIndex := anIndex - 1 ].

	anIndex = 0
		ifTrue: [ NotFound signal ]
		ifFalse: [ ^ objectsArray at: anIndex ]