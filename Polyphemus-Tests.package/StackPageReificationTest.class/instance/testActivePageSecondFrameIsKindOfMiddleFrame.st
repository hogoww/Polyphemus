tests
testActivePageSecondFrameIsKindOfMiddleFrame

	| activePage middleFrame |
	self interpretUntilMethodChangedNumberOfTimes: 3.

	reifiedMemory := PreReifiedMemory on: memory.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.

	activePage := stackPages mostRecentlyUsedPage.
	middleFrame := activePage frames second.

	self assert: middleFrame class equals: OOPMiddleFrame.