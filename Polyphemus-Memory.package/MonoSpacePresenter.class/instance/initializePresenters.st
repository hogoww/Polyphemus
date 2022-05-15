initialization
initializePresenters

	memoryPresenter := AbstractMemoryPresenter newOn: interpreter.
	
	queryWidget := self instantiate: QueryWidget. 
	
	legend := self instantiate: StatForPresenterPresenter.
