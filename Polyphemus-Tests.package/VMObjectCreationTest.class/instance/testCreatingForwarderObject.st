tests
testCreatingForwarderObject
	| oop object |
	oop := self newZeroSizedObject.
	memory pinObject: oop.
	object := self reifyOop: oop.
	self assert: object isForwarderOop