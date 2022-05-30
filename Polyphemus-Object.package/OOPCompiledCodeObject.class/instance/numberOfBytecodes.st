accessing
numberOfBytecodes
	
	^ (memory numBytesOf: address) - (self numSlots * memory wordSize)
