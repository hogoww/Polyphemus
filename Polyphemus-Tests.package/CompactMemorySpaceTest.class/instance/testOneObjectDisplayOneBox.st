running
testOneObjectDisplayOneBox
	self newZeroSizedObject.
	self updateSpace.
	self assert: compactSpace allNodes size equals: 1