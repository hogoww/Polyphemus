bindings
testChangingPageChangesPageKeepScripterText
	| initialCode |
	initialCode := inspector selectedPage currentCode.
	inspector selectPageIndex: 2.
	inspector selectPageIndex: 1.
	self assert: initialCode equals: inspector selectedPage currentCode