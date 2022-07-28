tests
testSymbolicBytecodeAt
	| indexOfBytecode expectedBytecode |
	indexOfBytecode := 1.
	expectedBytecode := SymbolicBytecode new 
		method: object;
		bytes: {(object bytecodeAt: 1)} asByteArray;
	 	description: 'pushRcvr: 1';
		offset: indexOfBytecode.
	self assert: (object symbolicBytecodesAt: indexOfBytecode) equals: expectedBytecode 