initialization
testSlotAtPutOverflow
	self should: [ self testedObject slotAt: 4 put: 42 ] raise: SubscriptOutOfBounds