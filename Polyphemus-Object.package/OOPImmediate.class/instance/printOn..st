testing
printOn: aStream
	self isCharacterOop ifTrue: [ ^ (memory characterValueOf: address) asCharacter printOn: aStream ].
	self isIntegerOop ifTrue: [ ^ self asInteger printOn: aStream ].
	^ super printOn: aStream