tests
testTopFrameIsWellFormed

	| activePage topFrame callerFrame |
	self interpretUntilMethodChangedNumberOfTimes: 3.

	reifiedMemory := PreReifiedMemory on: memory.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.

	activePage := stackPages mostRecentlyUsedPage.
	topFrame := activePage frames first.
	
	callerFrame := activePage frames second.

	self assert: topFrame oopCaller equals: callerFrame.
	self assert: topFrame oopMethod selector asString equals: 'newSession'.
	self assert: topFrame oopContext equals: reifiedMemory reifiedNilObject.
	self assert: topFrame oopReceiver oopClassName equals: 'SessionManager'.