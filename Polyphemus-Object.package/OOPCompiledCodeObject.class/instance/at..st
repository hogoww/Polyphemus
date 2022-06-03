accessing
at: anIndex
	^ self bytecodeAt: (anIndex - (self numSlots * memory wordSize)) - memory wordSize 