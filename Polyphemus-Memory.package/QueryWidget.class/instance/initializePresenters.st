initialize
initializePresenters
	kindOfQueryList := self instantiate: SpDropListPresenter.
	self initializeQueries.
	kindOfQueryList items: queries keys.
	
	queryInput := self instantiate: SpCodePresenter.
	queryInput lineNumbers: false.
	queryInput withoutScrollBars.
	queryInput text: queries anyOne defaultText