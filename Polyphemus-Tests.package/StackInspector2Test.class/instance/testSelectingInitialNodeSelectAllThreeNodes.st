test-selecting
testSelectingInitialNodeSelectAllThreeNodes
	| oop firstLayer secondLayer image |
	image := SpurSimulatorImage onSpurSimulator: memory.
	oop := SpurObject on: (self newObjectWithSlots: 1) image: image.
	firstLayer := SpurObject on: (self newObjectWithSlots: 1) image: image.
	secondLayer := SpurObject on: (self newObjectWithSlots: 0) image: image.
	oop slotAt: 1 put: firstLayer.
	firstLayer slotAt: 1 put: secondLayer.
	
	stackInspector updateInspector.
	stackInspector newSpaceNodes first click.
	
	"We also have the freelist from set upm that survived and is not tenured"
	self assert: stackInspector newSpaceNodes first paint equals: stackInspector colorProvider initialSelectionColor.
	self assert: stackInspector newSpaceNodes second paint equals: stackInspector colorProvider initialSelectionColor lighter lighter lighter.
	self assert: stackInspector newSpaceNodes third paint equals: stackInspector colorProvider initialSelectionColor lighter lighter lighter lighter lighter lighter.