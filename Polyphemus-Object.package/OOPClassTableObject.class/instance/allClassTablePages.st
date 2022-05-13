testing
allClassTablePages
	^ (1 to: 4096) 
		select: [ :i | (self reifiedSlotAt: i) isNilOop not ] 
		thenCollect: [ :i | (self reifiedSlotAt: i) ]