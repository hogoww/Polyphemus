tests
testSymbolicBytecodeAt
	| indexOfBytecode expectedBytecode |
	indexOfBytecode := 1.
	expectedBytecode := SymbolicBytecode new 
		method: compiledMethodObject;
		bytes: {(compiledMethodObject bytecodeAt: 1)} asByteArray;
	 	description: 'pushRcvr: 1';
		offset: indexOfBytecode.
	self assert: (compiledMethodObject symbolicBytecodesAt: indexOfBytecode) equals: expectedBytecode 