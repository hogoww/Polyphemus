test
testIsPinnedOop
	| oop obj |
	
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	oop := self reifyOop: (memory followForwarded: obj).
	
	self assert: oop isPinnedOop