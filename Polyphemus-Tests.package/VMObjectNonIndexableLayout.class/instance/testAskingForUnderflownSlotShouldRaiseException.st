initialization
testAskingForUnderflownSlotShouldRaiseException
	self should: [ nonIndexableLayoutObject slotAt: 0 ] raise: SubscriptOutOfBounds 