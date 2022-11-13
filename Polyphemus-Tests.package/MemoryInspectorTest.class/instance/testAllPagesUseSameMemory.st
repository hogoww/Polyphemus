tests
testAllPagesUseSameMemory
	self assert: inspector pages isNotEmpty.
	inspector pages do: [ :aPage |
		self assert: aPage presenterProvider value reifiedMemory identicalTo: reifiedMemory ]