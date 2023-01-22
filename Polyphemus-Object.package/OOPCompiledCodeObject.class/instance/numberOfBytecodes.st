accessing
numberOfBytecodes
	
	^ (memory numBytesOf: address) - (self oopNumberOfSlots * memory wordSize)
