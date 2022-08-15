accessing
bytecodeAt: anIndex put: aBytecode
	"Currently not supported to add bytecodes"
	(anIndex between: 1 and: self numberOfBytecodes) ifFalse: [ SubscriptOutOfBounds signal ].
	memory storeByte: (self indexForBytecode: anIndex) ofObject: address withValue: aBytecode