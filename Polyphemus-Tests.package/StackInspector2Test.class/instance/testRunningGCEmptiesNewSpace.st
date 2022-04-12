test-displaying
testRunningGCEmptiesNewSpace
	self newZeroSizedObject.
	
	memory doScavenge: 1. "Tenure by age"
	stackInspector updateInspector.
	
	self assert: stackInspector newSpaceNodes size equals: 0.