initialization
testAskingForUnderflownSlotShouldRaiseException
	self should: [ self testedObject slotAt: 0 ] raise: SubscriptOutOfBounds 