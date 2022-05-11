instance creation
newFromImage: anImagePath
	^ self basicNew
		createInterpreterFrom: anImagePath;
		spacePresenterClass: OldSpacePresenter;
		initialize;
		yourself