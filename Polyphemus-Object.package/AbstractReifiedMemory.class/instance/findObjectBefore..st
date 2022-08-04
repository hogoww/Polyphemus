finding
findObjectBefore: anOop

	| anIndex |
	anIndex := anOop - baseAddress >> 3.

	[ (objectsArray at: anIndex) isNil and: [ anIndex  > 0 ] ] whileTrue: [ 
		anIndex := anIndex - 1 ].

	anIndex = 0
		ifTrue: [ Error signal ]
		ifFalse: [ ^ objectsArray at: anIndex ]