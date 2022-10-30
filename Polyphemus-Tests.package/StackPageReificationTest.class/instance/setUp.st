tests
setUp
	super setUp.
	self interpretUntilMethodChangedNumberOfTimes: 3.

	reifiedMemory := FullyReifiedMemory on: memory.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.
