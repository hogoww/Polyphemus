initialization
initializePresenters
	reifiedMemory := ReifiedMemory on: interpreter objectMemory.
	self initializeClassesPresenter.
	self initializeMethodsPresenter.