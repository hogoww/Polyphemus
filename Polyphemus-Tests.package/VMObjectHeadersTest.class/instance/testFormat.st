tests
testFormat
	| oop |
	oop := self objectForOop: self newZeroSizedObject.
	self assert: oop oopFormat equals: (memory formatOf: oop address)