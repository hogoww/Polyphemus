initialization
initializePresenters

	memoryPresenter := self spacePresenterClass newOn: interpreter.
	
	queryWidget := self instantiate: QueryWidget. 
	
	legend := self instantiate: SpRoassalPresenter