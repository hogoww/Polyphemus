initialization
testSlotAtPutUnderflow
	self should: [ fixedLayoutObject slotAt: 0 put: 42 ] raise: SubscriptOutOfBounds