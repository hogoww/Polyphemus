initialization
initializePresenters
	codePresenter := self instantiate: SpCodePresenter.
	codePresenter beForScripting.
	self setCode: LastCode.
	codePresenter whenTextChangedDo: [ :newValue :oldValue | LastCode := newValue ].