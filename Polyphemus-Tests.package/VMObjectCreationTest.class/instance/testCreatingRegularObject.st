tests
testCreatingRegularObject
	| oop object |
	oop := self newZeroSizedObject.
	object := self objectForOop: oop.
	self assert: object isRegularOop.