test-color
testOldSpaceObjectIsColoredProperly
	
	| numberOfBoxes numberOfBoxesAfter oldOopBox |
	numberOfBoxes := stackInspector oldSpaceNodes size.
	self newOldSpaceObjectWithSlots: 1 classIndex: 90.
	
	stackInspector updateInspector.
	numberOfBoxesAfter := stackInspector oldSpaceNodes size.
	
	oldOopBox := stackInspector oldSpaceNodes last.
	self assert: oldOopBox paint equals: stackInspector colorProvider regularOopColor.