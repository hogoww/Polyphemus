coloring
colorForDepth: aDepth 
	aDepth = 0 ifTrue: [ ^ self colorForNonGraphObject ].
	aDepth = 1 ifTrue: [ ^ self initialSelectionColor ].
	aDepth timesRepeat: [ ^ self initialSelectionColor lighter lighter lighter lighter ]. 