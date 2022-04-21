running
testSelectingItemChangesItemSelected
	| initialText |
	initialText := widget queryInput text.
	widget querySelector selectIndex: widget querySelector listSize.
	self deny: initialText equals: widget queryInput text