testing
printOn: aStream
	self isCharacterOop ifTrue: [ ^ (memory characterValueOf: address) asCharacter printOn: aStream ].
	self isIntegerOop ifTrue: [ ^ (memory integerValueOf: address) printOn: aStream ].
	^ super printOn: aStream