tests
testCreatingRegularObject
	| oop object |
	oop := self newZeroSizedObject.
	object := self reifyOop: oop.
	self assert: object isRegularOop