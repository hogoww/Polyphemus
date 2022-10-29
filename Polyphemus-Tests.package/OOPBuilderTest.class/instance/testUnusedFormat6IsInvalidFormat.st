test-InvalidFormat
testUnusedFormat6IsInvalidFormat
	oopBuilder oopFormat: 6.
	self should: [ self buildObject ] raise: OOPInvalidFormat