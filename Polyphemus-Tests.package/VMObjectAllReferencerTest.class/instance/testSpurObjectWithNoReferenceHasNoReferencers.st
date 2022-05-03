tests-allReferencers
testSpurObjectWithNoReferenceHasNoReferencers
	| oop |
	oop := self reifyOop: self newZeroSizedObject.
	self assert: oop allReferencers isEmpty