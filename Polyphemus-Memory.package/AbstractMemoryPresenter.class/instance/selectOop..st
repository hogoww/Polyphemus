display
selectOop: anOop
	| graph color |
	graph := anOop objectGraph.
	color := colorProvider initialSelectionColor.
	graph do: [ :aDepthArray |
		aDepthArray do: [ : aSpurOop | (self oopForAddress: aSpurOop) paint: color ].
		color := color lighter lighter lighter
		].