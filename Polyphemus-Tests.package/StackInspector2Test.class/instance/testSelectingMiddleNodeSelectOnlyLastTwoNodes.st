test-selecting
testSelectingMiddleNodeSelectOnlyLastTwoNodes
	| oop firstLayer secondLayer image |
	image := SpurSimulatorImage onSpurSimulator: memory.
	oop := SpurObject on: (self newObjectWithSlots: 1 classIndex: 42) image: image.
	firstLayer := SpurObject on: (self newObjectWithSlots: 1) image: image.
	secondLayer := SpurObject on: (self newObjectWithSlots: 0) image: image.
	oop slotAt: 1 put: firstLayer.
	firstLayer slotAt: 1 put: secondLayer.
	
	memorySpace updateMemorySpace.
	memorySpace newSpaceNodes second click.
	
	self assert: memorySpace newSpaceNodes first paint equals: memorySpace colorProvider regularOopColor.
	self assert: memorySpace newSpaceNodes second paint equals: memorySpace colorProvider initialSelectionColor.
	self assert: memorySpace newSpaceNodes third paint equals: memorySpace colorProvider initialSelectionColor lighter lighter lighter.