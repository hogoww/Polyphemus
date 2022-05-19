running
testTwoDifferentObjectDisplayTwoBoxes
	| objectOop |
	self newZeroSizedObject.
	objectOop := self reifyOop: self newZeroSizedObject.
	objectOop pinObjectOop.
	self updateSpace.
	self assert: compactSpace allNodes size equals: 2