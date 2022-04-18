test-objectGraph
testUpdateSpacesTwiceShowsTwoObjects
	self newZeroSizedObject.
	self updateSpaces.	 
	self newZeroSizedObject.
	self halt.
	self updateSpaces.	
self halt.
	self assert: newSpace spaceSize equals: 2