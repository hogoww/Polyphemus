running
setUp
	super setUp.
	newSpace := NewSpaceFullPresenter openOn: interpreter.
	oldSpace := OldSpaceFullPresenter openOn: interpreter