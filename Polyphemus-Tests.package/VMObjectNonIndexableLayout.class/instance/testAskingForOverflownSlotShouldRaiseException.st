initialization
testAskingForOverflownSlotShouldRaiseException
	self should: [ nonIndexableLayoutObject slotAt: 4 ] raise: SubscriptOutOfBounds 