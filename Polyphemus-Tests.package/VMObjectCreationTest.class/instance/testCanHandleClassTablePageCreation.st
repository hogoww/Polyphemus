tests
testCanHandleClassTablePageCreation
	self assert: (self reifyOop: memory classTableRootObj) address equals: memory classTableRootObj 