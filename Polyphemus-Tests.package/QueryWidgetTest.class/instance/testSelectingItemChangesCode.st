tests
testSelectingItemChangesCode
	| initialText |
	"Adding a query may make fail this test case because the initialCode may be different"
	initialText := widget queryInput text.
	widget querySelector selectIndex: widget querySelector listSize.
	self deny: initialText equals: widget queryInput text