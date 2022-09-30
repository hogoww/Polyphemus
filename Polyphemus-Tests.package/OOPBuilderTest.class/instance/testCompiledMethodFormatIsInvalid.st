test-InvalidFormat
testCompiledMethodFormatIsInvalid
	oopBuilder oopFormat: 24.
	self should: [ self buildObject ] raise: OOPInvalidFormat