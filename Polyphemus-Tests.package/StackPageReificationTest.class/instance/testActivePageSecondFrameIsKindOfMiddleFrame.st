tests
testActivePageSecondFrameIsKindOfMiddleFrame

	| activePage middleFrame |

	activePage := stackPages mostRecentlyUsedPage.
	middleFrame := activePage frames second.

	self assert: middleFrame isMiddleFrame