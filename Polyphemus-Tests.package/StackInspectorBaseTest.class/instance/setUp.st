running
setUp
	super setUp.
	newSpace := (NewSpacePresenter openOn: interpreter) presenter.
	newSpace setScopeToNewSpace.
	oldSpace := (OldSpacePresenter openOn: interpreter) presenter.
	oldSpace setScopeToOldSpace.
	self updateSpaces