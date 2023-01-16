coloring
colorForOop: anOop
	^ (selection includes: anOop)
		ifTrue: [ self colorForSelectedObject ]
		ifFalse: [ self colorForNonSelectedObject ]