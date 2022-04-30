initialization
spacePresenterFor: aClass

	| pagePresenter |
	pagePresenter := aClass newOn: interpreter.
	^ (SpNotebookPage 
		title: pagePresenter title
		icon: (self iconNamed: #nautilusIcon) 
		provider: [ pagePresenter ])
		beCloseable;
		yourself