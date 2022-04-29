accessing
slotAt: anIndex
	^ memory fetchByte: anIndex - 1 ofObject: address