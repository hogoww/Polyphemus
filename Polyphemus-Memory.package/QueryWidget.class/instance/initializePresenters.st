initialize
initializePresenters
	queryInput := self instantiate: SpTextInputFieldPresenter.
	queryInput text: 'Enter your query ...'.
	kindOfQueryList := self instantiate: SpDropListPresenter.
	kindOfQueryList items: self kindOfQuerySupported
		