tests-graphObject
testGraphObjectWithThreeLayerHasThreeDepthLevels
	| oop firstLayer secondLayer |
	oop := SpurObject on: (self newObjectWithSlots: 1) image: image.
	firstLayer := SpurObject on: (self newObjectWithSlots: 1) image: image.
	secondLayer := SpurObject on: (self newZeroSizedObject) image: image.
	oop slotAt: 1 put: firstLayer.
	firstLayer slotAt: 1 put: secondLayer.
	self assert: oop objectGraph size equals: 3."depth = 3"
	self assert: oop objectGraph third first equals: secondLayer