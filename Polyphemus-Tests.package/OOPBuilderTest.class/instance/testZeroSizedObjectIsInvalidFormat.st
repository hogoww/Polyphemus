test-InvalidFormat
testZeroSizedObjectIsInvalidFormat
	oopBuilder oopFormat: 0.
	self should: [ self buildObject ] raise: OOPInvalidFormat