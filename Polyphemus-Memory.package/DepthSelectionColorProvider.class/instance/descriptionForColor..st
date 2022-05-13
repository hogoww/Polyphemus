description
descriptionForColor: aColor

	aColor = self initialColorForSelectedObject ifTrue: [ ^ 'selected element' ].
	aColor = self colorForNonSelectedObject ifTrue: [ ^ 'non subgraph object' ].
	"See comment in colorForOop"
	aColor = self colorDepth1Object ifTrue: [ ^ ' object depth 1'].
	aColor = self colorDepth2Object ifTrue: [ ^ ' object depth 2'].
	aColor = self colorDepth3Object ifTrue: [ ^ ' object depth 3'].
	aColor = self colorDepth4Object ifTrue: [ ^ ' object depth 4'].
	aColor = self colorDeepDepthObject ifTrue: [ ^ ' object depth > 4'].
	^'depth not handled or color with no description'