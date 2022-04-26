running
testSelectingItemChangesItemSelected
	| initialText |
	initialText := widget querySelector selectedItem.
	widget querySelector selectIndex: widget querySelector listSize.
	self deny: initialText equals: widget querySelector selectedItem