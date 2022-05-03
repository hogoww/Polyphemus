initialization
testAskingForOverflownSlotShouldRaiseException
	self should: [ self testedObject slotAt: 4 ] raise: SubscriptOutOfBounds 