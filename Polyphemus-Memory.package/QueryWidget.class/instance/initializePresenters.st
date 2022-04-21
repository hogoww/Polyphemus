initialize
initializePresenters
	querySelector := self instantiate: SpDropListPresenter.
	self initializeQueries.
	querySelector items: queries keys.
	
	queryInput := self instantiate: SpCodePresenter.
	queryInput lineNumbers: false.
	queryInput withoutScrollBars.