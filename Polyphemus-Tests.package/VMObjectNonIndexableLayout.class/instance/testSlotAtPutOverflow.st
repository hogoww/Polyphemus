initialization
testSlotAtPutOverflow
	self should: [ nonIndexableLayoutObject slotAt: 4 put: 42 ] raise: SubscriptOutOfBounds