initialization
pageForPresenter: aPresenter

	^ (SpNotebookPage 
		title: aPresenter title
		icon: (self iconNamed: #nautilusIcon) 
		provider: [ aPresenter ])
		beCloseable;
		yourself