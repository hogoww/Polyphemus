running
testClusterOneObjectWithTwoSimilarObjectCreatesTwoClusters
	| res objectOop |
	"relies on the fact that newObjectWithSlots currently creates an hidden object"
	objectOop := self reifyOop: self newZeroSizedObject.
	objectOop pinObjectOop.
	self newZeroSizedObject.
	self newZeroSizedObject.
	
	compactSpace updateMemorySpace.
	res := compactSpace clusterScopeByColor.
	self assert: res size equals: 2