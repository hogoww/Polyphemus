description
descriptionForColor: aColor

	aColor = self initialSelectionColor ifTrue: [ ^'selected element' ].
	self flag: #HandleDepthColor.
	"blab blah ifTrue: [^ 'depth ', actualDepth  ]"
	^'non subgraph object'