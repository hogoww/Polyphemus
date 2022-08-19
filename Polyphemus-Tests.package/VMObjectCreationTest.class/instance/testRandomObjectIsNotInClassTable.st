tests-classTable
testRandomObjectIsNotInClassTable
	| oop classTable |
	oop := self newZeroSizedObject.
	classTable := self reifyOop: memory classTableRootObj.
	self deny: (classTable isClassInClassTable: oop)