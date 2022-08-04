finding
findObjectAfter: anOop

	| anIndex max |
	anIndex := (anOop - baseAddress >> 3) + 1.
	max := objectsArray size.

	[ (objectsArray at: anIndex) isNil and: [ anIndex  < max ] ] whileTrue: [ 
		anIndex := anIndex + 1 ].

	anIndex = 0
		ifTrue: [ ^nil ]
		ifFalse: [ ^ objectsArray at: anIndex ]