tests
testCreatingForwarderObject
	| oop object |
	oop := self newZeroSizedObject.
	memory pinObject: oop.
	object := self objectForOop: oop.
	self assert: object isForwarderOop