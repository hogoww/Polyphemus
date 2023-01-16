tests-bindings
testChangingPageAndBackGetsBackInitialPage
	| initialPage |
	initialPage := inspector selectedPage.
	inspector selectPageIndex: 2.
	inspector selectPageIndex: 1.
	self assert: initialPage equals: inspector selectedPage