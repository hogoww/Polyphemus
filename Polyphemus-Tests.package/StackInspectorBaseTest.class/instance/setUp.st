running
setUp
	super setUp.
	newSpace := (NewSpacePresenter openOn: interpreter) presenter.
	oldSpace := (OldSpacePresenter openOn: interpreter) presenter