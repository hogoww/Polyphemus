tests
testBytecodeAt
	self assert: (object bytecodeAt: 1) equals: 1.
	self assert: (object bytecodeAt: 2) equals: 2.
	self assert: (object bytecodeAt: 3) equals: 3.
	self assert: (object bytecodeAt: 4) equals: 4.
	self assert: (object bytecodeAt: 5) equals: 5