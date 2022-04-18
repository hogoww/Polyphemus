helper
colorForOop: anOop
	^ (selection includes: anOop)
		ifTrue: [ self selectedColor ]
		ifFalse: [ self nonSelectedColor ]