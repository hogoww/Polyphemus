test-testing
testIsForwarder
	| oop obj |
	
	obj := self newZeroSizedObject.
	oop := SpurObject on: obj image: image.
	self deny: oop isForwarder.
	
	memory pinObject: obj.
	self assert: oop isForwarder.