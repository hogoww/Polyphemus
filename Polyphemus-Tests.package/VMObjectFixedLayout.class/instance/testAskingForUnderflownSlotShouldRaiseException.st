initialization
testAskingForUnderflownSlotShouldRaiseException
	self should: [ fixedLayoutObject slotAt: 0 ] raise: SubscriptOutOfBounds 