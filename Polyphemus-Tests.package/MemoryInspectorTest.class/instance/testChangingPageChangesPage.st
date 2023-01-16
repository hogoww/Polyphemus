tests-bindings
testChangingPageChangesPage
	| initialPage |
	initialPage := inspector selectedPage.
	inspector selectPageIndex: 2.
	self deny: initialPage equals: inspector selectedPage