initialization
initializePresenters

	memoryPresenter := FlatSpacePresenter newOn: interpreter.
	
	queryWidget := self instantiate: QueryWidget. 
	
	legend := self instantiate: StatForPresenterPresenter.
