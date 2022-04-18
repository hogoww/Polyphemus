test-objectGraph
testUpdateSpacesTwiceShowsTwoObjects
	self newZeroSizedObject.
	self updateSpaces.	 
	self newZeroSizedObject.
	self updateSpaces.	

	self assert: newSpace spaceSize equals: 2