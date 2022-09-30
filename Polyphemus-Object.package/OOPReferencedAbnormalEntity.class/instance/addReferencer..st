adding
addReferencer: anOop

	referencers ifNil: [ referencers := Set new ].
	referencers add: anOop