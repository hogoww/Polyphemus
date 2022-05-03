tests
testClassTableIsCached
	self assert: (self reifyOop: memory classTableRootObj) equals: (self reifyOop: memory classTableRootObj)