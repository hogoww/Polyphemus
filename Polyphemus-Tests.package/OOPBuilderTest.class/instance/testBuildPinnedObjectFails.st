tests
testBuildPinnedObjectFails
	oopBuilder oopIsPinned: true.

	self should: [ 	reifiedOop := self buildObject ] raise: Error.