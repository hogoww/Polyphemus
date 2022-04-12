running
setUp
	self setUpUsingImage.
	 newSpace := NewSpacePresenter openOn: interpreter.
	 oldSpace := OldSpacePresenter openOn: interpreter