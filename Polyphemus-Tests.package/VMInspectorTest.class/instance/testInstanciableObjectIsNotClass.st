tests-testing
testInstanciableObjectIsNotClass
	| oop |
	oop := SpurObject on: self newZeroSizedObject image: image.
	self deny: oop isClassOop