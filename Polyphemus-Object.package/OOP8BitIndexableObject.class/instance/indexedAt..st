accessing-slots
indexedAt: anIndex
	^ memory fetchByte: anIndex - 1 ofObject: address