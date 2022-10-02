test-InvalidFormat
testUnusedFormat8IsInvalidFormat
	oopBuilder oopFormat: 8.
	self should: [ self buildObject ] raise: OOPInvalidFormat