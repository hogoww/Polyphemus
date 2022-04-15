showing
initializePresenters
	
	memorySpace := self instantiate: SpRoassalPresenter.
	
	queryTextInput := self instantiate: SpTextInputFieldPresenter.
	queryTextInput text: 'Enter your query ...'.
	
	legend := self instantiate: SpListPresenter.
		
	
			

	