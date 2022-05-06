testing
allClassTablePages
	^ (1 to: 4096) collect: [ :i | self reifiedSlotAt: i ]