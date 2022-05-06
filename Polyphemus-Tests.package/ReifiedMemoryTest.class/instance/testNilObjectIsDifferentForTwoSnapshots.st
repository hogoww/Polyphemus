tests
testNilObjectIsDifferentForTwoSnapshots
	| initialNilObject |
 	self newMemorySnapshot.
	initialNilObject := reifiedMemory reifyOop: reifiedMemory nilObject.
	self newMemorySnapshot.
	self deny: (reifiedMemory reifyOop: reifiedMemory nilObject) identicalTo: initialNilObject 