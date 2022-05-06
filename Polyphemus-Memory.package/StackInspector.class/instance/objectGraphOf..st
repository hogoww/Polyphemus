showing
objectGraphOf: anOop
	| oop graph color |
	oop := (SpurObject on: anOop memory: (SpurSimulatorImage onSpurSimulator: interpreter objectMemory)).
	graph := oop objectGraph.
	color := colorProvider initialSelectionColor.
	graph do: [ :aDepthArray |
		aDepthArray do: [ : aSpurOop | (self oopForAddress: aSpurOop) paint: color ].
		color := color lighter lighter lighter
		].