tests
testActivePageContainsThreeFrames

	| activePage |
	activePage := stackPages mostRecentlyUsedPage.

	self assert: activePage frameNumber equals: 3.