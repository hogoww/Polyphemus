accessing
checkSlotAccessIndex: anIndex
	(anIndex between: 1 and: object numSlots)
		ifFalse: [ SubscriptOutOfBounds signal ].	