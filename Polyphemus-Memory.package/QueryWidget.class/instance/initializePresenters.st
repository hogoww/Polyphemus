initialization
initializePresenters
	querySelector := self instantiate: SpDropListPresenter.
	self initializeQueries.
	querySelector items: queries keys.
	querySelector whenSelectedItemChangedDo: [ :selected | self selectQuery: selected ].
	
	queryInput := self instantiate: SpCodePresenter.
	queryInput lineNumbers: false.
	queryInput withoutScrollBars.
	queryInput 
		bindKeyCombination: Character cr 
		toAction: [ self executeQuery ].
		