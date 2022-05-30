accessing
allBytecodes
	^ (1 to: self numberOfBytecodes) collect: [ :i | self bytecodeAt: i ]