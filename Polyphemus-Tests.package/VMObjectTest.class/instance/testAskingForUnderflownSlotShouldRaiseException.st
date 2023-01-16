initialization
testAskingForUnderflownSlotShouldRaiseException
	self should: [ self testedObject reifiedSlotAt: 0 ] raise: SubscriptOutOfBounds 