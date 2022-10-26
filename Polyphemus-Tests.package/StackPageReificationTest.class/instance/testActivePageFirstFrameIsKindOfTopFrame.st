tests
testActivePageFirstFrameIsKindOfTopFrame

	| activePage topFrame |
	self interpretUntilMethodChangedNumberOfTimes: 3.

	reifiedMemory := PreReifiedMemory on: memory.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.

	activePage := stackPages mostRecentlyUsedPage.
	topFrame := activePage frames first.

	self assert: topFrame class equals: OOPTopFrame.