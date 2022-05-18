running
setUp
	super setUp.
	compactSpace := (CompactSpacePresenter openOn: interpreter) presenter.
	compactSpace setScopeToNewSpace.
	compactSpace updateMemorySpace