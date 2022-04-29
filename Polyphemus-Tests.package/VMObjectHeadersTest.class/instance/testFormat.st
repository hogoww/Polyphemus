tests
testFormat
	| oop |
	oop := self reifyOop: self newZeroSizedObject.
	self assert: oop oopFormat equals: (memory formatOf: oop address)