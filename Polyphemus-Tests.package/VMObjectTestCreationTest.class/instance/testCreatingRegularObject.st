tests
testCreatingRegularObject
	| oop object |
	oop := self newZeroSizedObject.
	object := AbstractSpurEntity newFor: oop image: image.
	self assert: object isRegularOop.