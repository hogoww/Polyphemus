query
objectGraphOf: anOop
	| graph |
	graph := anOop objectGraph.
	1 to: graph size do: [ :aDepth |
		(graph at: aDepth) do: [ : aSpurOop | 
			(self oopForAddress: aSpurOop) paint: (colorProvider selectionColorForDepth: aDepth - 1) ].
		].