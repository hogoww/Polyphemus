tests
testNilObjectIsDifferentForTwoSnapshots
	| initialNilObject |
	initialNilObject := reifiedMemory reifyOop: reifiedMemory nilObject.
	self newMemorySnapshot.
	self deny: (reifiedMemory reifyOop: reifiedMemory nilObject) identicalTo: initialNilObject 