accessing
checkSlotAccessIndex: anIndex
	(anIndex between: 1 and: self oopNumberOfSlots)
		ifFalse: [ SubscriptOutOfBounds signal ].	