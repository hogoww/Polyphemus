bindings
testChangingPageChangesPageKeepPreviousCode
	| initialCode |
	initialCode := ' 1 + 1 '.
	inspector selectedPage setCode: initialCode.
	inspector selectPageIndex: 2.
	inspector selectPageIndex: 1.
	self assert: initialCode equals: inspector selectedPage currentCode