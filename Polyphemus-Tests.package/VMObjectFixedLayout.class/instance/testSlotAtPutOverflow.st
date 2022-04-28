initialization
testSlotAtPutOverflow
	self should: [ fixedLayoutObject slotAt: 4 put: 42 ] raise: SubscriptOutOfBounds