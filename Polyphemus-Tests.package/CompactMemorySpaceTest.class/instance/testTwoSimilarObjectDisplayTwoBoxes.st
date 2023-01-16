tests
testTwoSimilarObjectDisplayTwoBoxes
	self newZeroSizedObject.
	self newZeroSizedObject.
	self updateSpace.
	self assert: compactSpace allNodes size equals: 1