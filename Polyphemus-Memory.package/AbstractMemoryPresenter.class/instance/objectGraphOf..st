display
objectGraphOf: anOop
	| graph color |
	graph := anOop objectGraph.
	color := colorProvider initialSelectionColor.
	1 to: graph size do: [ :aDepth |
		(graph at: aDepth) do: [ : aSpurOop | 
			(self oopForAddress: aSpurOop) paint: (colorProvider selectionColorForDepth: aDepth - 1) ].
		].