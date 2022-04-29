accessing
checkSlotAccessIndex: anIndex
	(anIndex between: 1 and: self numSlots)
		ifFalse: [ SubscriptOutOfBounds signal ].	