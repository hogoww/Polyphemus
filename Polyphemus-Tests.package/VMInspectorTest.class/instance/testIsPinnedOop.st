test-testing
testIsPinnedOop
	| oop obj |
	
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	oop := SpurObject on: (memory followForwarded: obj) image: image.
	
	self assert: oop isPinnedOop.