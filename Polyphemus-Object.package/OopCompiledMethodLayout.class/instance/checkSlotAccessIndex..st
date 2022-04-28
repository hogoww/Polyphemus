accessing
checkSlotAccessIndex: anIndex
	(anIndex between: 1 and: object numberOfLiterals + 1 "method header")
		ifFalse: [ SubscriptOutOfBounds signal ].	