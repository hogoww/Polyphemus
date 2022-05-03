running
setUp
	super setUp.
	newSpace := (MonoSpacePresenter newSpaceOn: interpreter) open presenter.
	oldSpace := (MonoSpacePresenter oldSpaceOn: interpreter) open presenter.