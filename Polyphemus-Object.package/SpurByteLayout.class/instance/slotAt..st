accessing
slotAt: anInteger 
	
	| bodyAddress |
	self assert: anInteger >= 0 description: 'Index must be greater than 0'.
	self assert: self numberOfSlots >= anInteger description: 'Index Out of Bounds'.

	bodyAddress := self address + self headerSize + (anInteger * self wordSize).
	
	^ self memory memoryManager unsignedByteAt: bodyAddress + self wordSize + (0 - 1) 
	