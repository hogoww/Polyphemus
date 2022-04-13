test-selecting
testSelectingInitialNodeSelectAllThreeNodes
	| oop firstLayer secondLayer image |
	image := SpurSimulatorImage onSpurSimulator: memory.
	oop := SpurObject on: (self newObjectWithSlots: 1) image: image.
	firstLayer := SpurObject on: (self newObjectWithSlots: 1) image: image.
	secondLayer := SpurObject on: (self newObjectWithSlots: 0) image: image.
	oop slotAt: 1 put: firstLayer.
	firstLayer slotAt: 1 put: secondLayer.
	
	memorySpace updateMemorySpace.
	memorySpace newSpaceNodes first click.
	
	"We also have the freelist from set upm that survived and is not tenured"
	self assert: memorySpace newSpaceNodes first paint equals: memorySpace colorProvider initialSelectionColor.
	self assert: memorySpace newSpaceNodes second paint equals: memorySpace colorProvider initialSelectionColor lighter lighter lighter.
	self assert: memorySpace newSpaceNodes third paint equals: memorySpace colorProvider initialSelectionColor lighter lighter lighter lighter lighter lighter.