coloring
colorForDepth: aDepth 

	aDepth = 1 ifTrue: [ ^self initialSelectionColor ].
	aDepth timesRepeat: [ ^self initialSelectionColor lighter lighter lighter lighter ]. 