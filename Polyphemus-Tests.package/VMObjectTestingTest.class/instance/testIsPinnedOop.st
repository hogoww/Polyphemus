test
testIsPinnedOop
	| oop obj |
	
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	oop := self objectForOop: (memory followForwarded: obj).
	
	self assert: oop isPinnedOop