coloring
selectionColorForDepth: aDepth
	| color |
	color := self initialSelectionColor.
	aDepth timesRepeat: [ color := color lighter lighter lighter lighter ].
	^ color