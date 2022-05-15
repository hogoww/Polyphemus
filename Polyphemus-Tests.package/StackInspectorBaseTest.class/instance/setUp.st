running
setUp
	super setUp.
	newSpace := (FlatSpacePresenter openOn: interpreter) presenter.
	newSpace setScopeToNewSpace.
	oldSpace := (FlatSpacePresenter openOn: interpreter) presenter.
	oldSpace setScopeToOldSpace.
	self updateSpaces