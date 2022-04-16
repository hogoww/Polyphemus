tests
testByteSizeOfEmptyObject
	| oop |
	oop := self objectForOop: self newZeroSizedObject.
	self assert: oop oopByteSize equals: 16