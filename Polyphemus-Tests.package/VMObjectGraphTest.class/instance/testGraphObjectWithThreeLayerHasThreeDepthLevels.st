tests-graphObject
testGraphObjectWithThreeLayerHasThreeDepthLevels
	| oop firstLayer secondLayer |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	firstLayer := self objectForOop: (self newObjectWithSlots: 1).
	secondLayer := self objectForOop: self newZeroSizedObject.
	oop slotAt: 1 put: firstLayer.
	firstLayer slotAt: 1 put: secondLayer.
	self assert: oop objectGraph size equals: 3."depth = 3"
	self assert: oop objectGraph third first equals: secondLayer