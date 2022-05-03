running
testClusterTwoSimilarObjectCreatesOneCluster
	| res |
	self newZeroSizedObject.
	self newZeroSizedObject.
	compactSpace updateScope.
	res := compactSpace clusterScopeByColor.
	self assert: res size equals: 1