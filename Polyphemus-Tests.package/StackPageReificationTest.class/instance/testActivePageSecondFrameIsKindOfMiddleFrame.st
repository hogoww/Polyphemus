tests
testActivePageSecondFrameIsKindOfMiddleFrame

	| activePage middleFrame |

	activePage := stackPages mostRecentlyUsedPage.
	middleFrame := activePage frames second.

	self assert: middleFrame class equals: OOPMiddleFrame.