tests
testBytecodeAtOverflow
	self should: [ object bytecodeAt: 6 ] raise: SubscriptOutOfBounds 
	