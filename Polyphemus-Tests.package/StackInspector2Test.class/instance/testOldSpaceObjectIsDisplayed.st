test-displaying
testOldSpaceObjectIsDisplayed
	
	| numberOfBoxes numberOfBoxesAfter |
	numberOfBoxes := stackInspector oldSpaceNodes size.
	self newOldSpaceObjectWithSlots: 1.
	
	stackInspector updateInspector.
	numberOfBoxesAfter := stackInspector oldSpaceNodes size.
	
	self assert: numberOfBoxesAfter equals: numberOfBoxes + 1