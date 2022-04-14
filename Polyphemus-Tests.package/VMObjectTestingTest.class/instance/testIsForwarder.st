test
testIsForwarder
	| oop obj |
	
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	oop := self objectForOop: obj.
	self assert: oop isForwarderOop.