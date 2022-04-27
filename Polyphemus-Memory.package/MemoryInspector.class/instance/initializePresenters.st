initialization
initializePresenters
	super initializePresenters.
	notebook := self newNotebook.
	notebook addPage: (self spacePresenterFor: NewSpaceFullPresenter);
		addPage: (self spacePresenterFor: OldSpaceFullPresenter)