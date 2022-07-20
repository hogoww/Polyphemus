as yet unclassified
findObjectAfter: anOop

	| anIndex max |
	anIndex := (anOop - baseAddress >> 3) + 1.
	max := objects size.

	[ (objects at: anIndex) isNil and: [ anIndex  < max ] ] whileTrue: [ 
		anIndex := anIndex + 1 ].

	anIndex = 0
		ifTrue: [ ^nil ]
		ifFalse: [ ^ objects at: anIndex ]