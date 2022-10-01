test-InvalidFormat
testBuildClassObjectWithWrongFormat
	oopBuilder 
		oopIsClass: true;
		oopFormat: 2.
	self should: [ self buildObject ] raise: OOPInvalidFormat