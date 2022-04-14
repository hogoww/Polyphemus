test-displaying
testNewSpaceObjectIsDisplayed
	| oop |
	oop := self newZeroSizedObject.
	self updateSpaces.
	
	self assert: newSpace spaceSize equals: 1.
	self assert: (newSpace oopForAddress: oop) model address equals: oop.
