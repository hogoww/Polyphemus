tests
testBytecodeAt
	self assert: (compiledMethodObject bytecodeAt: 1) equals: 1.
	self assert: (compiledMethodObject bytecodeAt: 2) equals: 2.
	self assert: (compiledMethodObject bytecodeAt: 3) equals: 3.
	self assert: (compiledMethodObject bytecodeAt: 4) equals: 4.
	self assert: (compiledMethodObject bytecodeAt: 5) equals: 5