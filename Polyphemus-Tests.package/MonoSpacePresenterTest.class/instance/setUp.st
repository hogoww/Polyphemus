running
setUp
	super setUp.
	newSpace := (MonoSpacePresenter newOn: interpreter) open presenter.
	newSpace memoryPresenter setScopeToNewSpace.
	oldSpace := (MonoSpacePresenter newOn: interpreter) open presenter.
	oldSpace  memoryPresenter setScopeToOldSpace.