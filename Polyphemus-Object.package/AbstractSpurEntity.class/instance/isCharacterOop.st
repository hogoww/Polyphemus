testing
isCharacterOop
	^ self isImmediateOop and: [ memory isCharacterObject: address ]