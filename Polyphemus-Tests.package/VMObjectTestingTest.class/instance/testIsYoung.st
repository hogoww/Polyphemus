test
testIsYoung
	| oop |
	oop := self objectForOop: self newZeroSizedObject.

	self assert: oop isYoungOop.