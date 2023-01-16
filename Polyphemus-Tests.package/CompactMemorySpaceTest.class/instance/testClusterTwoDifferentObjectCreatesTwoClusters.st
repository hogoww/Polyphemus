tests
testClusterTwoDifferentObjectCreatesTwoClusters
	| res objectOop |
	self newZeroSizedObject.
	objectOop := self reifyOop: self newZeroSizedObject.
	objectOop pinObjectOop.
	self updateSpace.
	res := compactSpace clusterScopeByColor.
	self assert: res size equals: 2