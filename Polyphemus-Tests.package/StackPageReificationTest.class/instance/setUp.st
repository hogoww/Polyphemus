running
setUp
	self class currentImage current setUpTestCase: self.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.
