initialization
initializePresenters
	| newSpacePage oldSpacePage memoryScripter |
	super initializePresenters.
	
	newSpacePage := (MonoSpacePresenter newOn: interpreter).
	newSpacePage memoryPresenter setScopeToNewSpace.
	oldSpacePage := (MonoSpacePresenter newOn: interpreter).
	oldSpacePage memoryPresenter setScopeToOldSpace.
	
	memoryScripter := (ReifiedMemoryScripter newOn: interpreter).
	memoryScripter addBinding: (WorkspaceVariable key: #oldSpace value: oldSpacePage).
	memoryScripter addBinding: (WorkspaceVariable key: #newSpace value: newSpacePage).
	
	notebook := self newNotebook.
	notebook
		addPage: (self pageForPresenter: memoryScripter);
		addPage: (self pageForPresenter: (ImageClassBrowser newOn: interpreter));
		addPage: ((self pageForPresenter: newSpacePage) title: 'New Space');
		addPage: ((self pageForPresenter: oldSpacePage) title: 'Old Space')