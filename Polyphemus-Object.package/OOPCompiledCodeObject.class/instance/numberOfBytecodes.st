accessing
numberOfBytecodes
	
	^ self size - (self numSlots * memory wordSize)
