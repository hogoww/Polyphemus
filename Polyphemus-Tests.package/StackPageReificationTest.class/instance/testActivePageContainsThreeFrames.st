tests
testActivePageContainsThreeFrames

	| activePage |
	self interpretUntilMethodChangedNumberOfTimes: 3.

	reifiedMemory := PreReifiedMemory on: memory.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.

	activePage := stackPages mostRecentlyUsedPage.

	self assert: activePage frameNumber equals: 3.