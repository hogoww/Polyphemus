tests-classTable
testClassTableCreation
	| oop |
	oop := self reifyOop: memory classTableRootObj.
	self assert: oop address equals: memory classTableRootObj
	