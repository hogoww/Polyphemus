tests-allReferencers
testSpurObjectWithNoReferenceHasNoReferencers
	| oop |
	oop := self objectForOop: self newZeroSizedObject.
	self assert: oop allReferencers isEmpty