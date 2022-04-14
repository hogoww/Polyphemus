test-displaying
testRunningGCEmptiesNewSpace
	self newZeroSizedObject.
	
	memory doScavenge: 1. "Tenure by age"
	self updateSpaces.
	
	self assert: newSpace spaceSize equals: 0.