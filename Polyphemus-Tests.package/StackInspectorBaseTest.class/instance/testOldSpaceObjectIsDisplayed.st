test-displaying
testOldSpaceObjectIsDisplayed
	
	| numberOfBoxes numberOfBoxesAfter |
	numberOfBoxes := oldSpace spaceSize.
	self newOldSpaceObjectWithSlots: 1.
	
	self updateSpaces.
	numberOfBoxesAfter := oldSpace spaceSize.
	
	self assert: numberOfBoxesAfter equals: numberOfBoxes + 1