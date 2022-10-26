tests
testActivePageBaseFrameIsKindOfBaseFrame

	| activePage baseFrame |
	self interpretUntilMethodChangedNumberOfTimes: 3.

	reifiedMemory := PreReifiedMemory on: memory.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.

	activePage := stackPages mostRecentlyUsedPage.
	baseFrame := activePage frames last.

	self assert: baseFrame class equals: OOPBaseFrame.