initialization
initializePresenters

	memorySpace := self instantiate: SpRoassalPresenter.

	queryTextInput := self instantiate: SpTextInputFieldPresenter.
	queryTextInput text: '[ :box | box " write behavior " ]'.
	queryTextInput whenSubmitDo: [ 'self selection: (memorySpace' ].
	
	legend := self instantiate: SpRoassalPresenter.

	