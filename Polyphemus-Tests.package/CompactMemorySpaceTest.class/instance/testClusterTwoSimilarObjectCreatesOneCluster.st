tests
testClusterTwoSimilarObjectCreatesOneCluster
	| res |
	self newZeroSizedObject.
	self newZeroSizedObject.
	self updateSpace.
	res := compactSpace clusterScopeByColor.
	self assert: res size equals: 1