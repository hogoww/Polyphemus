initialization
initializePresenters

	memoryPresenter := self spacePresenterClass newOn: interpreter.
	
	queryWidget := self instantiate: QueryWidget. 
	
	legend := self instantiate: StatForPresenterPresenter.
	
	legend presenter: memoryPresenter.
	legend colorProvider: memoryPresenter colorProvider.
	
	memoryPresenter statProvider: legend.
