initialization
testSlotAtPutUnderflow
	self should: [ nonIndexableLayoutObject slotAt: 0 put: 42 ] raise: SubscriptOutOfBounds