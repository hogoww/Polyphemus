tests-classTable
testClassTablePageAllClasses
	| oop |
	oop := self reifyOop: memory classTableFirstPage.
	self assert: oop allClassesOop size equals: 14