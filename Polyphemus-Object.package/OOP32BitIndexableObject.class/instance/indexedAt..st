accessing
indexedAt: anIndex
	^ memory fetchLong32: anIndex - 1 ofObject: address