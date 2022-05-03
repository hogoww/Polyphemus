tests-classTable
testRandomObjectIsNotInClassTable
	| oop classTable |
	oop := self newZeroSizedObject.
	classTable := OOPClassTableObject classTableFor: image.
	self deny: (classTable isInClassTable: oop)