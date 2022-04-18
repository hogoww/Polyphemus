running
setUp
	super setUp.
	newSpace := (NewSpaceFullPresenter openOn: interpreter) presenter.
	oldSpace := (OldSpaceFullPresenter openOn: interpreter) presenter.