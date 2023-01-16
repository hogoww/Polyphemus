initialization
testSlotAtPutUnderflow
	self should: [ self testedObject slotAt: 0 put: 42 ] raise: SubscriptOutOfBounds