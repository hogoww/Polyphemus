description
descriptionForColor: aColor

	aColor = self initialColorForSelectedObject ifTrue: [ ^'selected element' ].
	aColor = self colorForNonSelectedObject ifTrue: [ ^'non subgraph object' ].
	"See comment in colorForOop"
	aColor = self colorDepth1Object ifTrue: [^' depth 1 subgraph'].
	aColor = self colorDepth2Object ifTrue: [^' depth 2 subgraph'].
	aColor = self colorDepth3Object ifTrue: [^' depth 3 subgraph'].
	aColor = self colorDepth4Object ifTrue: [^' depth 4 subgraph'].
	aColor = self colorDeepDepthObject ifTrue: [' < depth 4 subgraph'].
	^'depth not handled or color with no description'