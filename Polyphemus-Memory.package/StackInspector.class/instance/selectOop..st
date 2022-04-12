showing
selectOop: anOop
	| oop graph color |
	oop := (SpurObject on: anOop image: (SpurSimulatorImage onSpurSimulator: interpreter objectMemory)).
	graph := oop objectGraph.
	color := colorProvider initialSelectionColor.
	graph do: [ :aDepthArray |
		aDepthArray do: [ : aSpurOop | (self oopWithAddress: aSpurOop) paint: color ].
		color := color lighter lighter lighter
		].