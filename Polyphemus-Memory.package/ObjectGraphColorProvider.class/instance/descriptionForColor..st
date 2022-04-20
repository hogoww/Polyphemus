description
descriptionForColor: aColor

	aColor = self initialColorForSelectedObject ifTrue: [ ^'selected element' ].
	aColor = self colorForNonSelectedObject ifTrue: [ ^'non subgraph object' ].
	self flag: #HandleDepthColor.
	"blab blah ifTrue: [^ 'depth ', actualDepth  ]"
	^'depth not handled or color with no description'