running
testTwoSimilarObjectDisplayTwoBoxes
	self newZeroSizedObject.
	self newZeroSizedObject.
	compactSpace updateMemorySpace.
	self assert: compactSpace allNodes size equals: 1