initialization
initializePresenters
	codePresenter := self instantiate: SpCodePresenter.
	codePresenter beForScripting.
	codePresenter text: 'reifiedMemory'