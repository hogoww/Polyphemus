tests
testActivePageBaseFrameIsKindOfBaseFrame

	| activePage baseFrame |
	activePage := stackPages mostRecentlyUsedPage.
	baseFrame := activePage frames last.

	self assert: baseFrame class equals: OOPBaseFrame.