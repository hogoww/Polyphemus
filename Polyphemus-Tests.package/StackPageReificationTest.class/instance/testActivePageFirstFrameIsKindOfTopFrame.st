tests
testActivePageFirstFrameIsKindOfTopFrame

	| activePage topFrame |
	activePage := stackPages mostRecentlyUsedPage.
	topFrame := activePage frames first.

	self assert: topFrame isTopFrame 