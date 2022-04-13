tests-testing
testImmediateIsNotClass
	| integer |
	integer := SpurObject on: (memory integerObjectOf: 1) image: image.
	self deny: integer isClassOop