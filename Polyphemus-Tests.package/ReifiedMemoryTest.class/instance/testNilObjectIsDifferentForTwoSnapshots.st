tests
testNilObjectIsDifferentForTwoSnapshots
	| initialNilObject |
 	self newMemorySnapshot.
	initialNilObject := reifiedMemory nilObject.
	self newMemorySnapshot.
	self deny: reifiedMemory nilObject identicalTo: initialNilObject 