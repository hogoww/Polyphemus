finding
findObjectBefore: anOop

	| anIndex |
	anIndex := anOop - baseAddress >> 3.

	[ (objects at: anIndex) isNil and: [ anIndex  > 0 ] ] whileTrue: [ 
		anIndex := anIndex - 1 ].

	anIndex = 0
		ifTrue: [ Error signal ]
		ifFalse: [ ^ objects at: anIndex ]