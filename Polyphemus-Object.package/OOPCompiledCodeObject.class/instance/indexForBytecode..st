accessing
indexForBytecode: anIndex
	^ self numSlots * memory wordSize + anIndex - 1