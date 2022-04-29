tests
testByteSizeOfEmptyObject
	| oop |
	oop := self reifyOop: self newZeroSizedObject.
	self assert: oop oopByteSize equals: 16