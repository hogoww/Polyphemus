running
testTwoDifferentObjectDisplayTwoBoxes
	| objectOop |
	self newZeroSizedObject.
	objectOop := self objectForOop: self newZeroSizedObject.
	objectOop pinObjectOop.
	compactSpace updateMemorySpace.
	self assert: compactSpace allNodes size equals: 2