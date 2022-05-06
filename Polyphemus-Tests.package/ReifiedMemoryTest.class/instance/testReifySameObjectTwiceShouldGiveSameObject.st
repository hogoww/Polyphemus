tests
testReifySameObjectTwiceShouldGiveSameObject
	| oop |
	oop := self newZeroSizedObject.
	self newMemorySnapshot.
	self assert: (self reifyOop: oop) identicalTo: (self reifyOop: oop)