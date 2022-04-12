test-displaying
testNewSpaceObjectIsDisplayed
	| oop |
	oop := self newZeroSizedObject.
	stackInspector updateInspector.
	
	self assert: stackInspector newSpaceNodes size equals: 1.
	self assert: stackInspector newSpaceNodes first model equals: oop.
