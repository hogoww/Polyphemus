tests
testBaseFrameIsWellFormed

	| activePage baseFrame frameAbove |
	self interpretUntilMethodChangedNumberOfTimes: 3.

	reifiedMemory := PreReifiedMemory on: memory.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.

	activePage := stackPages mostRecentlyUsedPage.
	baseFrame := activePage frames last.
	
	frameAbove := activePage frames second.
	
	self assert: baseFrame oopFrameAbove equals: frameAbove.
	self assert: baseFrame oopMethod selector asString equals: 'launchSnapshot:andQuit:'.
	self assert: baseFrame oopContext oopClassName equals: 'Context'.
	self assert: baseFrame oopReceiver oopClassName equals: 'SessionManager'.