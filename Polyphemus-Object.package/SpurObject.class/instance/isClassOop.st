testing
isClassOop
	self isImmediate ifTrue: [ ^ false  ].
	^ self memory isInClassTable: address value