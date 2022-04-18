coloring
colorForDepth: aDepth 
	| color |
	aDepth = 0 ifTrue: [ ^ self colorForNonSelectedObject ].

	color := self initialColorForSelectedObject.
	aDepth - 1 timesRepeat: [ color lighter lighter lighter lighter ]. 
	^ color