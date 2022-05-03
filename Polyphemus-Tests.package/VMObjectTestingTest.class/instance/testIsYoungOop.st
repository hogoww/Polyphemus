test
testIsYoungOop
	| oop |
	oop := self reifyOop: self newZeroSizedObject.

	self assert: oop isYoungOop.