running
testClusterTwoDifferentObjectCreatesTwoClusters
	| res objectOop |
	self newZeroSizedObject.
	objectOop := self objectForOop: self newZeroSizedObject.
	objectOop pinObjectOop.
	compactSpace updateScope.
	res := compactSpace clusterScopeByColor.
	self assert: res size equals: 2