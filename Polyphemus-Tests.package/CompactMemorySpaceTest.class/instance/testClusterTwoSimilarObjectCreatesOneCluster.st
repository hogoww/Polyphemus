running
testClusterTwoSimilarObjectCreatesOneCluster
	| res |
	self newZeroSizedObject.
	self newZeroSizedObject.
	compactSpace updateMemorySpace.
	res := compactSpace clusterScopeByColor.
	self assert: res size equals: 1