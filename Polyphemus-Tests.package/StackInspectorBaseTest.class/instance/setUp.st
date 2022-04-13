running
setUp
	super setUp.
	newSpace := NewSpacePresenter openOn: interpreter.
	oldSpace := OldSpacePresenter openOn: interpreter