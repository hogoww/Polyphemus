testing
allClassTablePages
	"Slow version that gets all the pages.
	This should only be used while creating the memory.
	The instance variable should be used instead whenever possible"
	^ (1 to: 4096) 
		select: [ :i | (self reifiedSlotAt: i) isNilOop not ] 
		thenCollect: [ :i | (self reifiedSlotAt: i) ]