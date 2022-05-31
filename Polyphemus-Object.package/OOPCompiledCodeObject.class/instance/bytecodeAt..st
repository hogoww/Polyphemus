accessing
bytecodeAt: anIndex 
	(anIndex between: 1 and: self numberOfBytecodes) ifFalse: [ SubscriptOutOfBounds signal ].
	^ memory fetchByte: (self numSlots * memory wordSize + anIndex - 1) ofObject: address