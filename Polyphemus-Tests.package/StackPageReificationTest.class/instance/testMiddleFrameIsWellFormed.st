tests
testMiddleFrameIsWellFormed

	| activePage middleFrame callerFrame frameAbove |
	self interpretUntilMethodChangedNumberOfTimes: 3.

	reifiedMemory := PreReifiedMemory on: memory.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.

	activePage := stackPages mostRecentlyUsedPage.
	middleFrame := activePage frames second.
	
	frameAbove := activePage frames first.
	callerFrame :=  activePage frames last.

	self assert: middleFrame oopCaller equals: callerFrame.
	self assert: middleFrame oopFrameAbove equals: frameAbove.
	self assert: middleFrame oopMethod selector asString equals: 'installNewSession'.
	self assert: middleFrame oopContext equals: reifiedMemory reifiedNilObject.
	self assert: middleFrame oopReceiver oopClassName equals: 'SessionManager'.
	self halt.