tests
testByteSizeOfEmptyObject
	| oop |
	oop := self objectForOop: self newZeroSizedObject.
	self assert: oop byteSize equals: 16