tests
testFormat
	| oop |
	oop := self objectForOop: self newZeroSizedObject.
	self assert: oop objectFormat equals: (memory formatOf: oop address)