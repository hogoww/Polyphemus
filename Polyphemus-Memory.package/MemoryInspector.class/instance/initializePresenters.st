initialization
initializePresenters
	| newSpacePage oldSpacePage |
	super initializePresenters.
	
	newSpacePage := (MonoSpacePresenter newOn: interpreter).
	newSpacePage memoryPresenter setScopeToNewSpace.
	oldSpacePage := (MonoSpacePresenter newOn: interpreter).
	oldSpacePage memoryPresenter setScopeToOldSpace.
		
	notebook := self newNotebook.
	notebook
		addPage: (self pageForPresenter: (ImageClassBrowser newOn: interpreter));
		addPage: ((self pageForPresenter: newSpacePage) title: 'New Space');
		addPage: ((self pageForPresenter: oldSpacePage) title: 'Old Space')