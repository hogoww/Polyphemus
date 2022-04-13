tests
testCreatingForwarderObject
	| oop object |
	oop := self newZeroSizedObject.
	memory pinObject: oop.
	object := AbstractSpurEntity newFor: oop image: image.
	self assert: object isForwarderOop