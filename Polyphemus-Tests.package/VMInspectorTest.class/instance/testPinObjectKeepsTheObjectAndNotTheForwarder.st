tests
testPinObjectKeepsTheObjectAndNotTheForwarder
	| oop |
	oop := SpurObject on: self newZeroSizedObject image: image.
	
	oop pinObject.
	self deny: oop isForwarder.
	self assert: oop isPinnedOop