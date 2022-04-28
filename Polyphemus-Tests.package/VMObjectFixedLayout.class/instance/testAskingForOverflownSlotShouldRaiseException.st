initialization
testAskingForOverflownSlotShouldRaiseException
	self should: [ fixedLayoutObject slotAt: 4 ] raise: SubscriptOutOfBounds 