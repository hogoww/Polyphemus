accessing
initializePresenters

	memoryPresenter := self spacePresenterClass newOn: interpreter.
	
	queryTextInput := self instantiate: SpTextInputFieldPresenter.
	queryTextInput text: 'Enter your query ...'.
	
	legend := self instantiate: SpRoassalPresenter