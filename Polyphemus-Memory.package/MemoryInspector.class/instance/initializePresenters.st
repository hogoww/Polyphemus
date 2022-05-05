initialization
initializePresenters
	super initializePresenters.
	notebook := self newNotebook.
	notebook addPage: (self spacePresenterFor: (MonoSpacePresenter newSpaceOn: interpreter));
		addPage: (self spacePresenterFor: (MonoSpacePresenter oldSpaceOn: interpreter))