tests
testBaseFrameIsWellFormed

	| activePage baseFrame frameAbove |
	activePage := stackPages mostRecentlyUsedPage.
	baseFrame := activePage frames last.
	
	frameAbove := activePage frames second.
	
	self assert: baseFrame oopFrameAbove equals: frameAbove.
	self assert: baseFrame oopMethod selector asString equals: 'launchSnapshot:andQuit:'.
	self assert: baseFrame oopContext oopClassName equals: 'Context'.
	self assert: baseFrame oopReceiver oopClassName equals: 'SessionManager'.