tests-classTable
testRandomObjectIsNotInClassTable
	| oop classTable |
	oop := self newZeroSizedObject.
	classTable := OOPClassTableObject classTableFor: memory.
	self deny: (classTable isInClassTable: oop)