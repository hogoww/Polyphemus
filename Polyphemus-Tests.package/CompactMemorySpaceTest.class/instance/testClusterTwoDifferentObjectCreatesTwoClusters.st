running
testClusterTwoDifferentObjectCreatesTwoClusters
	| res objectOop |
	self newZeroSizedObject.
	objectOop := self reifyOop: self newZeroSizedObject.
	objectOop pinObjectOop.
	compactSpace updateScope.
	res := compactSpace clusterScopeByColor.
	self assert: res size equals: 2