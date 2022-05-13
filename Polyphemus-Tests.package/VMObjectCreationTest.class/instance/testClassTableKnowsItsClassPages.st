tests-classTable
testClassTableKnowsItsClassPages
	| oop |
	oop := self reifyOop: memory classTableRootObj.
	self assert: oop classTablePages size equals: 2