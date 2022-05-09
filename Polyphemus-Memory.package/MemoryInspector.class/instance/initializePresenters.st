initialization
initializePresenters
	super initializePresenters.
	notebook := self newNotebook.
	notebook 
		addPage: (self pageForPresenter: (ImageClassBrowser newOn: interpreter));
		addPage: (self pageForPresenter: (MonoSpacePresenter newSpaceOn: interpreter));
		addPage: (self pageForPresenter: (MonoSpacePresenter oldSpaceOn: interpreter))