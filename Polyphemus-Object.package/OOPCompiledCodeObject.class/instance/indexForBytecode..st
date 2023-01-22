accessing-bytecodes
indexForBytecode: anIndex
	^ self oopNumberOfSlots * memory wordSize + anIndex - 1