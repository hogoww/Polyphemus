testing
isIntegerOop
	^ self isImmediateOop and: [ memory isIntegerObject: address ]