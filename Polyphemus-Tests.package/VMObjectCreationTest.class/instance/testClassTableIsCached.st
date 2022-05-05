tests-classTable
testClassTableIsCached

	self
		assert: (self reifyOop: memory classTableRootObj)
		identicalTo: (self reifyOop: memory classTableRootObj)