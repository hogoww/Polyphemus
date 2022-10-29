test-InvalidFormat
testImmediateForamtIsInvalid
	oopBuilder oopFormat: 7.
	self should: [ self buildObject ] raise: OOPInvalidFormat