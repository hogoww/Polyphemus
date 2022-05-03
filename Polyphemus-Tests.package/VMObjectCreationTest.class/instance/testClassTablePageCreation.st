tests-classTable
testClassTablePageCreation
	| oop |
	oop := self reifyOop: memory classTableFirstPage.
	self assert: oop isClassTablePage