test
testIsForwarderOop
	| oop obj |
	
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	oop := self reifyOop: obj.
	self assert: oop isForwarderOop.