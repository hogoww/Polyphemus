initialization
testAskingForOverflownSlotShouldRaiseException
	self should: [ self testedObject reifiedSlotAt: 4 ] raise: SubscriptOutOfBounds 