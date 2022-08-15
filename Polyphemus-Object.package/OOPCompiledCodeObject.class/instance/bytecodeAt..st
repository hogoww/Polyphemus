accessing
bytecodeAt: anIndex 
	(anIndex between: 1 and: self numberOfBytecodes) ifFalse: [ SubscriptOutOfBounds signal ].
	^ memory fetchByte: (self indexForBytecode: anIndex) ofObject: address