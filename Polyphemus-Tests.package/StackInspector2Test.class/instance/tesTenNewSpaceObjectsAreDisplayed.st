test-displaying
tesTenNewSpaceObjectsAreDisplayed
	
	10 timesRepeat: [self newZeroSizedObject].
	stackInspector updateInspector.
	
	self assert: stackInspector newSpaceNodes size equals: 10.