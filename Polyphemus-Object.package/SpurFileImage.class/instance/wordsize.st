special-classes
wordsize
	^ self is32Bit ifTrue: [ 4 ] ifFalse: [ 8 ]