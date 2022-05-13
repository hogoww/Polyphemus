tests-classTable
testClassTablePageAllClasses
	| oop |
	oop := self reifyOop: memory classTableFirstPage.
	self assert: oop allClassAddresses size equals: 14