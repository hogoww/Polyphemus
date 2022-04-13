tests-allReferencers
testSpurObjectWithNoReferenceHasNoReferencers
	| oop |
	oop := SpurObject on: self newZeroSizedObject image: image.
	self assert: oop allReferencers isEmpty