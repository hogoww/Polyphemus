query
objectGraphOf: anOop

	| graph copy objectGraphColorProvider |
	copy := memorySpace canvas copy.
	graph := anOop objectGraph.
	objectGraphColorProvider := ObjectGraphColorProvider new.
	copy nodes do: [ :node | 
		| painted |
		painted := false.
		graph withIndexDo: [ :subgraph :index | 
			(subgraph includes: node model) ifTrue: [ 
				node paint: (objectGraphColorProvider colorForDepth: index).
				painted := true. ] ].
		painted ifFalse: [ node paint: objectGraphColorProvider colorForNonGraphObject. ]
		 ].
	self updateStatsAndLegend: objectGraphColorProvider.
	"1 to: graph size do: [ :aDepth | 
		(graph at: aDepth) do: [ :aSpurOop | 
			(self oopForAddress: aSpurOop) paint:
				(colorProvider selectionColorForDepth: aDepth - 1) ] ]"