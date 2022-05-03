running
testTwoDifferentObjectDisplayTwoBoxes
	| objectOop |
	self newZeroSizedObject.
	objectOop := self reifyOop: self newZeroSizedObject.
	objectOop pinObjectOop.
	compactSpace updateMemorySpace.
	self assert: compactSpace allNodes size equals: 2