test-displaying
testTenNewSpaceObjectsAreDisplayed
	
	10 timesRepeat: [self newZeroSizedObject].
	self updateSpaces.
	
	self assert: newSpace spaceSize equals: 10.