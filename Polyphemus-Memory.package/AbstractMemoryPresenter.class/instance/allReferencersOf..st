query
allReferencersOf: anOop
	| graph |
	graph := anOop allReferencers.
	(self oopForAddress: anOop) paint: (colorProvider initialSelectionColor).
	graph do: [ :aSpurOop |
			(self oopForAddress: aSpurOop) paint: (colorProvider initialSelectionColor)
		].